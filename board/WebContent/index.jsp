<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@page import="java.util.regex.Pattern"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset="EUC-KR">
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
	 		ResultSet rs = null;
	 
	 
	     Class.forName(driverName);
	 
	     Connection con = DriverManager.getConnection(url, "ora_user", "hong");    // getCo... : �������� url, id, pw
	 
	     out.println("Oracle Database Connection Success");
	     
	 	Statement stmt = con.createStatement(); //sql ������ ���������� statement ��ü ����
	 	
	 	String sql = "select * from voard order by idx desc";
	 	rs = stmt.executeQuery(sql);
	%>
<body>
<h1>�Խñ۸���Ʈ</h1>
<table>
	<tr>
		<th>��ȣ</th>
		<th>����</th>
		<th>�ۼ���</th>
		<th>��¥</th>
		<th>��ȸ��</th>
	</tr>
	
	<%
	while(rs.next()) {
		out.print("<tr>");
		out.print("<td>" + rs.getString(1) + "</td>");
		out.print("<td>" + rs.getString(2) + "</td>");
		out.print("<td>" + rs.getString(3) + "</td>");
		out.print("<td>" + rs.getString(4) + "</td>");
		out.print("<td>" + rs.getString(5) + "</td>");
		out.print("</tr>");	
	}
	%>
	</table>
	<a href="write.jsp">�۾���</a>
	<%
		con.close();
	}catch (Exception e) {
		out.print("oracle Database Something Problem. <hr>");
		out.println(e.getMessage());
		e.printStackTrace();
	}
	%>
	<%-- <tr>
		<td><%=idx %></td>
		<td><%=title %></td>
		<td><%=writer %></td>
		<td><%=regdate %></td>
		<td><%=count %></td>
	</tr> --%>
</body>
</html>