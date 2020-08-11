<%@page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
<form action="insert.jsp" method="post" onsubmit="return formCheck();">
title : <input type="text" name="title" /><br/>
writer : <input type="text" name="writer" /><br/>
content: <textarea rows="10" cols="20" name ="content"></textarea><br>
regdate : <input type="text" name="regdate"/>
<input type="submit"/>
</form>  
<script>
	/* function formCheck(){
		var length = document.forms[0].length-1;
		
		for(var i = 0; i < length; i++) {
			if(document.forms[0][i].value == null || document.forms[0][i].value == "") {
				alert(document.forms[0][i].name + "을 입력하세요.");
				document.forms[0][i].focus();
				return false;
			}
		} */ 	//아래 코드의 축약화
	
		 function formCheck() {	
		var title = document.forms[0].title.value;
		var writer = document.forms[0].writer.value;
		var regdate = document.forms[0].regdate.value;
		var content = document.forms[0].content.value;
		
		if (title == null || title == "") {
			alert('제목을 입력하세요');
			document.forms[0].title.focus();
			return false;
		}
		if (writer == null || writer == "") {
			alert("글쓴이를 입력하세요.");
			document.forms[0].writer.focus();
			return false;
			} else if (writer.match(/^(\w+)@(\w+)[.](\w+)$/ig) == null) {
				alert("이메일 형식으로 입력하세요.");
				document.forms[0].writer.focus();
				return false;
			}
		if (regdate == null || regdate == "") {
			alert("날짜를 입력하세요");
			document.forms[0].regdate.focus();
			return false;
			}
		else if(regdate.match(/^\d\d\d\d\d\d+$/ig) == null) {
			alert("숫자 6자리 형식을 지켜주세요.");
			document.forms[0].regdate.focus();
			return false;
		}
		if (content == null || content == "") {
			alert("내용을 입력하세요.");
			document.forms[0].content.focus();
			return false;
			} 
		} 
</script>
</body>
</html>