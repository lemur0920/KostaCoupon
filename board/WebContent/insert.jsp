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
		 
	     String driverName = "oracle.jdbc.driver.OracleDriver"; //�����ͺ��̽��� �����ϱ����� ����̹��� �ε��մϴ�.
	 
	     String url = "jdbc:oracle:thin:@localhost:1522:myoracle";            //���� URL������ ��Ʈ��ȣ(oracle��Ʈ), sid(oracle����)
	 
	 
	 
	     Class.forName(driverName);
	 
	     Connection con = DriverManager.getConnection(url, "ora_user", "hong");    // getCo... : �������� url, id, pw
	 
	     out.println("Oracle �����ͺ��̽� db�� ���������� �����߽��ϴ�");
	 	Statement stmt = con.createStatement(); //sql ������ ���������� statement ��ü ����
	 	
	 	String sql = "INSERT INTO VOARD "+
	 			 
                "(IDX, TITLE, WRITER, REGDATE, COUNT, CONTENT) "+
 
                "VALUES (voard_seq.nextval, '"+title+"', '"+writer+"', sysdate, '+count+', '"+content+"')";
 
				stmt.executeUpdate(sql);  // ������ �����մϴ�.

	     con.close();
	 
	} catch (Exception e) {
	 
	     out.println("Oracle �����ͺ��̽� db ���ӿ� ������ �ֽ��ϴ�. <hr>");
	 
	     out.println(e.getMessage());
	 
	     e.printStackTrace();
	} finally {
		out.print("<script>location.href='index.jsp';</script>");
	}
%>
<body>
</body>
</html>