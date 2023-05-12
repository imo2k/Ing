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
        <p>1. 다음 빈 칸에 들어갈 말로 알맞은 것은?</p>
        <p>   Thomas ___ out two hours ago.</p>
        <input type="radio" name="q1" value="1"> ① go<br>
        <input type="radio" name="q1" value="2"> ② goes<br>
        <input type="radio" name="q1" value="3"> ③ goed<br>
        <input type="radio" name="q1" value="4"> ④ went<br>
        </form>
	<div style="margin: 10px; text-align: left;">
		<a href="test02.jsp">
		<input type="submit" value="다음" style="width: 100px; ">
		</a>
	</div>
</body>
</html>