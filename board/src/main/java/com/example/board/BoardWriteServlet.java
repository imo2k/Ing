package com.example.board;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.json.Json;
import javax.json.JsonObject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/boardwrite.do")
public class BoardWriteServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");

		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd_HHmmss");
		String fileNamePrefix = "board";
		String fileNameSuffix = ".json";
		String filePath = "C:\\board\\";
		File file = new File(filePath);
		
		if (!file.exists()) {
			file.mkdirs();
		}
		
		String fileName = fileNamePrefix + "_" + dateFormat.format(date) + fileNameSuffix;
		String fileFullPath = filePath + fileName;

		Map<String, Object> statistics = getStatistics(content);

		JsonObject json = Json.createObjectBuilder()
				.add("title", title)
				.add("writer", writer)
				.add("writeDate", dateFormat.format(date))
				.add("content", content)
				.add("statistics", Json.createObjectBuilder()
						.add("byteCount", statistics.get("byteCount").toString())
						.add("wordCount", statistics.get("wordCount").toString())
						.add("sentenceCount", statistics.get("sentenceCount").toString())
				).build();

		try (FileWriter fileWriter = new FileWriter(fileFullPath)) {
			fileWriter.write(json.toString());
			fileWriter.flush();
		}

		response.sendRedirect("boardResult.html");
	}

	private Map<String, Object> getStatistics(String content) {
		Map<String, Object> statistics = new HashMap<>();

		byte[] byteContent = content.getBytes();
		String[] words = content.split("\\s+");
		String[] sentences = content.split("[.?!]\\s+");
		int byteCount = byteContent.length;
		int wordCount = words.length;
		int sentenceCount = sentences.length;

		statistics.put("byteCount", byteCount);
		statistics.put("wordCount", wordCount);
		statistics.put("sentenceCount", sentenceCount);

		return statistics;
	}

}
