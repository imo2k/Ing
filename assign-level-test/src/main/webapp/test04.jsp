<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="text-align: center;" style="height: 400px">
		<h1>영어 레벨 테스트</h1><hr>
	</div>
		<form action="result.jsp" method="post">
   		<p>4. 다음 질문에 알맞은 답은?</p>
   		<p>   Were Mrs. and Mr. Brown at home yesterday?</p>
        <input type="radio" name="q4" value="1"> ① Yes, you are.<br>
        <input type="radio" name="q4" value="2"> ② No, you aren't<br>
        <input type="radio" name="q4" value="3"> ③ No, they weren't<br>
        <input type="radio" name="q4" value="4"> ④ No, they wasn't.<br>
        </form>
	<div style="margin: 10px; text-align: left;">
		<a href="test05.jsp">
		<input type="submit" value="다음" style="width: 100px; ">
		</a>
	</div>
</body>
</html>