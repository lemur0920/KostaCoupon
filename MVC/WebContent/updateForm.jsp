<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>글수정</h3>
<hr>
<form action="insertAction.do" method="post" enctype="multipart/form-data">
	작성자 : <input type="text" name="writer"><br>
	제목 : <input type="text" name="title"><br>
	파일:<input type="file" name="fname"><br>
	내용 <br>
	<textarea rows="6" cols="70" name="contents"></textarea>
	<br>
	<input type="submit" value="등록">
</form>
</body>
</html>