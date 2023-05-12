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
		<p>2. 다음 빈 칸에 들어갈 말로 알맞은 것은?</p>
   			<p>I have two nice friends. They are Ken and Joe. I like ___ . They like ___ , too.</p>
        <input type="radio" name="q2" value="1"> ① they - my<br>
        <input type="radio" name="q2" value="2"> ② them - me<br>
        <input type="radio" name="q2" value="3"> ③ their - mine<br>
        <input type="radio" name="q2" value="4"> ④ theirs - I<br>
        </form>
	<div style="margin: 10px; text-align: left;">
		<a href="test03.jsp">
		<input type="submit" value="다음" style="width: 100px; ">
		</a>
	</div>
</body>
</html>