<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/common.css" >
<style>
	<!--#board td:first-child{width:300px;}-->
	#board td:nthchild(1){width:300px; text-align:center;}
	
	#board input { width : 100%; }
	#board textarea { width : 100%; height : 350px; }
</style>
<script>
	window.onload = function(){
		const form = document.querySelector('form');
		form.addEventListener('submit',function(e){
			const titleEl = document.querySelector('[name=title]');
			if(titleEl.value==''){
			alert('제목을 입력해주세요');
			e.preventDefault();
			e.stopPropagation();
			}
		})
	}
</script>
</head>
<body>
   <div id="main">
   <!-- 메뉴목록 -->
   <%@ include file="/WEB-INF/include/menus.jsp" %>
   
   <!-- 새글쓰기 -->
   <form action="/Board/Write?num=1" method="POST">
   <input type="hidden" name="menu_id" value="${menu_id}"/>
   <table id="board">
    <caption><h2>새글쓰기</h2></caption>
    <tr>
      <td>제목</td>
      <td><input type="text" name="title"/></td>
    </tr>
    <tr>
      <td>글쓴이</td>
      <td><input type="text" name="writer"/></td>
    </tr>
    <tr>
      <td>내용</td>
      <td><textarea name="cont"></textarea></td>
    </tr>
    <tr>
     <td colspan="2">
     	<input type="submit" value="저장"/>
     </td>
    </tr>
   </table>
   </form>
   </div>
</body>
</html>






