<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>�ۼ���</h3>
<hr>
<form action="insertAction.do" method="post" enctype="multipart/form-data">
	�ۼ��� : <input type="text" name="writer"><br>
	���� : <input type="text" name="title"><br>
	����:<input type="file" name="fname"><br>
	���� <br>
	<textarea rows="6" cols="70" name="contents"></textarea>
	<br>
	<input type="submit" value="���">
</form>
</body>
</html>