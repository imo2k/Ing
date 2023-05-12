<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영어 레벨 테스트</title>
<style>
	table {
	border: 1px solid black;
	border-collapse: collapse;
	}
	th,
	td {
	border: 1px solid black;
	paddig: 25px;
	}
</style>
</head>
<body>
	<div style="text-align: center;" style="height: 400px">
		<h1>영어 레벨 테스트</h1><hr>
	</div>
	<div style="text-align: center;" style="height: 400px">
		<h1>영어 레벨 테스트:</h1>
	</div>
	<div style="text-align: center;" style="height: 400px">
    <table style="margin-left:auto;margin-right:auto;width: 40%;">
    <tr>
      <th>문항</th>
      <th>응답</th>
      <th>정답</th>
      <th>결과</th>
    </tr>
	<tr>
  		<td>문항1</td>
  		<td><%= (session.getAttribute("q1") != null) ? session.getAttribute("q1") : "" %></td>
  		<td>4</td>
       <td><%= (session.getAttribute("q1") != null && session.getAttribute("q1").equals("4")) ? "정답" : "오답" %></td>
    </tr>
    <tr>
    	<%-- 문항2 --%>
		<%
			String q2Answer = (String) session.getAttribute("q2");
			String q2Result = (q2Answer != null && q2Answer.equals("2")) ? "정답" : "오답";
		%>
      	<td>문항2</td>
      	<td><%= q2Answer %></td> <!-- 입력된 답을 출력 -->
      	<td>2</td>
      	<td><%= q2Result %></td>
    </tr>
    <tr>
      <td>문항3</td>
      <td><%= (request.getParameter("q3") != null) %></td> <!-- 입력된 답을 출력 -->
      <td>4</td>
      <td><%= (request.getParameter("q3") != null && request.getParameter("q3").equals("4")) ? "정답" : "오답" %></td>
    </tr>
    <tr>
      <td>문항4</td>
      <td><%= (request.getParameter("q4") != null) %></td> <!-- 입력된 답을 출력 -->
      <td>3</td>
      <td><%= (request.getParameter("q4") != null && request.getParameter("q4").equals("3")) ? "정답" : "오답" %></td>
    </tr>
    <tr>
      <td>문항5</td>
      <td><%= (request.getParameter("q5") != null) %></td> <!-- 입력된 답을 출력 -->
      <td>2</td>
      <td><%= (request.getParameter("q5") != null && request.getParameter("q5").equals("2")) ? "정답" : "오답" %></td>
    </tr>
  </table>
    </div>
    <div style="margin: 10px; text-align: center;">
		<a href=start.jsp>
		<input type="submit" value="다시하기" style="width: 100px; ">
		</a>
	</div>
</body>
</html>