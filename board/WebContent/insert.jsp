<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@page import="java.util.regex.Pattern"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("euc-kr");
	int idx = 1;
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String regdate = request.getParameter("regdate");
	int count = 10000;
	String content = request.getParameter("content");
	
	try {
		 
	     String driverName = "oracle.jdbc.driver.OracleDriver"; //데이터베이스에 접속하기위한 드라이버를 로드합니다.
	 
	     String url = "jdbc:oracle:thin:@localhost:1522:myoracle";            //접속 URL정보와 포트번호(oracle포트), sid(oracle버전)
	 
	 
	 
	     Class.forName(driverName);
	 
	     Connection con = DriverManager.getConnection(url, "ora_user", "hong");    // getCo... : 계정정보 url, id, pw
	 
	     out.println("Oracle 데이터베이스 db에 성공적으로 접속했습니다");
	 	Statement stmt = con.createStatement(); //sql 쿼리를 날리기위한 statement 객체 생성
	 	
	 	String sql = "INSERT INTO VOARD "+
	 			 
                "(IDX, TITLE, WRITER, REGDATE, COUNT, CONTENT) "+
 
                "VALUES (voard_seq.nextval, '"+title+"', '"+writer+"', sysdate, '+count+', '"+content+"')";
 
				stmt.executeUpdate(sql);  // 쿼리를 실행합니다.

	     con.close();
	 
	} catch (Exception e) {
	 
	     out.println("Oracle 데이터베이스 db 접속에 문제가 있습니다. <hr>");
	 
	     out.println(e.getMessage());
	 
	     e.printStackTrace();
	} finally {
		out.print("<script>location.href='index.jsp';</script>");
	}
%>
<body>
</body>
</html>