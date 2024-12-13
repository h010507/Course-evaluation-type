<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>

<%
String ct = request.getParameter("ct");
out.print("<h2>고객번호 : "+ct+"님의 코드예약 조회</h2>");

String table_top="<tr><th>고객번호</th><th>이름</th><th>코트사용일수</th><th>코트번호</th></tr>";
%>
<table>
<%
	try {
		Class.forName ("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from TBL_RESV_202301 r, TBL_CUST_202301 c where r.cust_no=c.cust_no and c.cust_no='"+ct+"'");
		while(rs.next()) {
			if(rs.getRow() == 1) out.print(table_top);	
			out.println("<tr><td>" + rs.getString(4) + "</td>");
			out.println("    <td>" + rs.getString(6) + "</td>");
			out.println("    <td>" + rs.getString(2) + "</td>");
			out.println("    <td>" + rs.getString(3) + "</td></tr>");
		}
		if(rs.getRow() == 0) out.print("<h2>코트예약 정보가 존재하지 않습니다.</h2>");	
		stmt.close();
		con.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>	
</table>







</div>
<div class="footer"><h3>HRDKOREA Copyright©2023</h3></div>
</div>

</body>
</html>