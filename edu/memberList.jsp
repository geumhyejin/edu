<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberList.jsp</title>
</head>
<body>
	<ul>
	<%
		List<Member> list = (List<Member>) request.getAttribute("memberList");
	for (Member mem : list) {
		out.print("<li>" +mem.getMemberId() + ", " + mem.getMemberName() + ", " + mem.getMemberAge() + ", " + mem.getMemberPwd() + ", ");
	}
	%>
	</ul>
</body>
</html>