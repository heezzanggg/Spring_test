<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내용보기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="/css/common.css" >
<style>
	a:hover { text-decoration: none;  }
	<!--#view td:first-child{width:300px;}-->
	#view td:nth-of-type(1){width:150px; text-align:center;}
	#view td:nth-of-type(2){width:400px; text-align:left;}
	#view td:nth-of-type(3){width:150px; text-align:center;}
	#view td:nth-of-type(4){width:400px; text-align:left;}
	
	#view tr:nth-of-type(4){height:350px; vertical-align: top;}
	
	caption{caption-side:top; text-align:center;}

</style>
<script>
</script>
</head>
<body>
   <div id="main">
   <!-- 메뉴목록 -->
   <%@ include file="/WEB-INF/include/menus.jsp" %>
   
   <!-- 내용보기 -->
   <table id="view">
    <caption><h2>내용보기</h2></caption>
    <tr>
      <td>번호</td>
      <td>${boardVo.idx}</td>
      <td>조회수</td>
      <td>${boardVo.readcount}</td>      
    </tr>
    <tr>
      <td>작성일</td>
      <td>${boardVo.regdate}</td>
      <td>글쓴이</td>
      <td>${boardVo.writer}</td>
    </tr>
    <tr>
      <td>제목</td>
      <td colspan ="3">${boardVo.title}</td>
    </tr>
    <tr>
      <td>내용</td>
      <td colspan ="3">${boardVo.cont}</td>
    </tr>
    <tr>
     <td colspan="4">
     	<a href="/Board/WriteForm?menu_id=${boardVo.menu_id}" class="btn btn-primary">새글쓰기</a>
     	<a href="/Board/WriteForm?menu_id=${boardVo.menu_id}" class="btn btn-primary">답글쓰기</a>
     	<a href="/Board/UpdateForm?menu_id=${boardVo.menu_id}&idx=${boardVo.idx}" class="btn btn-primary">내용수정</a>
     	<a href="/Board/Delete?menu_id=${boardVo.menu_id}&idx=${boardVo.idx}" class="btn btn-primary">내용삭제</a>
     	<a href="/Board/list?menu_id=${boardVo.menu_id}" class="btn btn-primary" >목록으로</a>
     	<a href="javascript:history.back()" class="btn btn-primary">이전으로</a>
     </td>
    </tr>
   </table>
   </div>
</body>
</html>






