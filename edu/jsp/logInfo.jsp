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
	//db조회 후 가져온 멤버를 확인 이름 , 나이를 출력
	//								없으면 "해당 사용자 없음."
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	//유효성체크
	if(id.isEmpty() || pwd.isEmpty()) {
		request.setAttribute("err", "ID , 비밀번호를 입력하세요.");
		RequestDispatcher rd = request.getRequestDispatcher("logInOut.jsp");
		rd.forward(request, response);
		return;
	}
	// 로그인 처리
	if(session.isNew() || session.getAttribute("id") == null) {
		session.setAttribute("id", id);
		
		out.print("로그인 작업이 완료되었습니다.");
	}else {
		out.print("이미 로그인 상태입니다.");
		
	}
	%>	
	
	<h3>아이디: <%=id %></h3>
	<h3>비밀번호: <%=pwd %></h3>

</body>
</html>