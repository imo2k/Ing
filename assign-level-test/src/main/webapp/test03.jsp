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
		<p>3. 다음 밑줄에 알맞은 말로 짝지은 것은?</p>
   		<p>- There ___ many singers in the studio.</p>
   		<p>- There ___ a rose in the vase.</p>
        <input type="radio" name="q3" value="1"> ① is – is<br>
        <input type="radio" name="q3" value="2"> ② goes<br>
        <input type="radio" name="q3" value="3"> ② is - are<br>
        <input type="radio" name="q3" value="4"> ④ are - is<br>
        </form>
	<div style="margin: 10px; text-align: left;">
		<a href="test04.jsp">
		<input type="submit" value="다음" style="width: 100px; ">
		</a>
	</div>
</body>
</html>