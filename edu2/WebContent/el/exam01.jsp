<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Language(/el/exam01.jsp)</title>
</head>
<body>
<%
	//String name = "Hello";
	//request.setAttribute("name", name);
	
	String name = request.getParameter("name");
	String age = request.getParameter("age");
%>
<%=name %>/<%=age %><br>

${param.name}/${param.age}
<%-- <h3>${name eq 'name'} </h3><!-- 417p el표현식 -->
<h3>${name == 'Hello'} </h3>
<h3>${10 ==15}</h3>
<h3>${10 !=15}</h3>
<h3>${empty name}</h3> --%>
</body>
</html>