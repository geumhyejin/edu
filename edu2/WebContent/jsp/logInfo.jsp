<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logInfo.jsp</title>
</head>
<body>
<%
	if  (request.getMethod().equals("POST")) {
	MemberDAO dao = new MemberDAO();
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	Member member = dao.checkInfo(id ,pwd);

	if(member ==null || member.getMemberId() == null) {
		out.print("<h3>사용자 정보없음</h3>");
	}else {
		session.setAttribute("info", member);
		out.print("<h3>이름: " + member.getMemberName() +
		"나이: " + member.getMemberAge() + "</h3>" );
	}
	
	}else {  //get 로그아웃
		session.invalidate();
		out.print("로그인됨.");
		
	}
	%>	
	

</body>
</html>