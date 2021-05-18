<%@page import="com.edu.beans.BookDAO"%>
<%@page import="com.edu.beans.BookBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
/*bookInput 값을 받아옴 */
BookDAO dao = new BookDAO();
BookBean book = new BookBean();
request.setCharacterEncoding("utf-8");

출처: https://javaengine.tistory.com/entry/JSP-UTF-8-한글깨짐-처리방법 [nalaolla]
if (request.getMethod().equals("POST")) {

	//입력
	String title = request.getParameter("title");
	String author = request.getParameter("author");
	String publisher = request.getParameter("publisher");

	//디비에 입력처리.. BookDAO dao = new BookDAO();
	//dao.insertBook();
	book.setAuthor(author);
	book.setPublisher(publisher);
	book.setTitle(title);
	//db에 입력처리
	dao.insertBook(book);
	
} else {
	//조회 select
	String title = request.getParameter("title");
	book = dao.getBook(title);
	
}

request.setAttribute("book", book); //setAttribute("book") 보내고 getAttribute("book") 로 받음.

RequestDispatcher rd = request.getRequestDispatcher("bookOutput.jsp");
rd.forward(request, response);
%>