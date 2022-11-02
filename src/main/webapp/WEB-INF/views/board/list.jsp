<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"  href = "/css/common.css"/>
<style>

</style>
</head>
<body>
	<div id = "main">
		<!-- 메뉴목록 -->
		<%@ include file ="/WEB-INF/include/menus.jsp" %>
		
		<!-- 게시판 -->
		<table id="board">
		<caption><h2>게시판</h2></caption>
		<tr>
		  <td colspan="5" class="right">
		  <a href="/Board/WriteForm?menu_id=${menu_id}">새글쓰기</a></td>
		</tr>
		<tr>
		  <th>번호</th>
		  <th>제목</th>
		  <th>글쓴이</th>
		  <th>날짜</th>
		  <th>조회수</th>
		</tr>
		
		<c:forEach var="board" items="${boardList}">
		<tr>
		 <td>${board.idx}</td>
		 <td>
		   <a href = "/Board/View?idx=${board.idx}">
		   ${board.title}
		   </a>
		 </td>
		 <td>${board.writer}</td>
		 <td>${board.regdate}</td>
		 <td>${board.readcount}</td>
	
		</tr>
		</c:forEach>
		
		</table>
	
	</div>
</body>
</html>