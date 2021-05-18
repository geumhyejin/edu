<%@page import="java.util.ArrayList"%>
<%@page import="com.edu.beans.BookBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl/exam02.jsp</title>
</head>
<body>
	<c:set var="num" value="${85 }" />
	점수
	<c:out value="${num }" />
	은
	<c:if test="${num gt 60 }">합격입니다.</c:if>
	<c:if test="${num lt 60 }">불합격</c:if>
	<br>
	<c:choose>
		<c:when test="${num ge 90 }">A학점</c:when>
		<c:when test="${num ge 80 }">B학점</c:when>
		<c:when test="${num >= 70 }">C학점</c:when>
		<c:otherwise>F학점</c:otherwise>
	</c:choose>
	<%
	ArrayList<BookBean> list = new ArrayList<>();
	list.add(new BookBean("title1", "author1", "pub1"));
	list.add(new BookBean("title2", "author2", "pub2"));
	list.add(new BookBean("title3", "author3", "pub3"));
	//for (BookBean book : list) {
	//	out.print("title"+ book.getTitle());
	//}
	request.setAttribute("list", blist);
	%>
	<!-- 반복문 -->
	<c:set var ="list"><%=list %></c:set>
	<c:forEach items="${list }" var = "item">
		${book.title } / ${book.author } / ${book.publisher }<br>
	</c:forEach>
</body>
</html>