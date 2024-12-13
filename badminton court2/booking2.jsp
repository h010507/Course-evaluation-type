<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>

<%
String rn = request.getParameter("rn");
String da = request.getParameter("da");
String ct = request.getParameter("ct");
String cn = request.getParameter("cn");

String sql= "INSERT INTO TBL_RESV_202301 VALUES('"+rn+"','"+da+"','"+cn+"','"+ct+"')";
out.print(sql);
try {
	Class.forName ("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	stmt.close();
	con.close();
} catch (Exception e) {
	e.printStackTrace();
}

%>
</div>
<script>
alert("예약완료");
location.href="index.jsp";
</script>
<div class="footer"><h3>HRDKOREA Copyright©2023</h3></div>
</div>

</body>
</html>