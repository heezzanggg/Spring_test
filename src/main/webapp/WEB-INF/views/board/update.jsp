<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정하기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="/css/common.css" >
<style>
	a:hover { text-decoration: none;  }
	<!--#view td:first-child{width:300px;}-->
	#update td:nth-of-type(1){width:150px; text-align:center;}
	#update td:nth-of-type(2){width:400px; text-align:left;}
	#update td:nth-of-type(3){width:150px; text-align:center;}
	#update td:nth-of-type(4){width:400px; text-align:left;}
	
	#update tr:nth-of-type(4){height:350px; vertical-align: top;}
	
	caption{caption-side:top; text-align:center;}
	input{width:100%;}
	textarea{width:100%; height:350px;}
	input[type = submit],input[type = reset] {width:180px;]}

</style>
<script>
</script>
</head>
<body>
   <div id="main">
   <!-- 메뉴목록 -->
   <%@ include file="/WEB-INF/include/menus.jsp" %>
   
   <form action="/Board/Update" method="POST"> 
   <input type="hidden" name="menu_id" value = "${board.menu_id }"/>
   
   <!-- 수정하기 -->
   <table id="update">
    <caption><h2>수정하기</h2></caption>
    <tr>
      <td>번호</td>
      <td><input type="text" name= "idx" value="${board.idx}" readonly/></td>
      <td>조회수</td>
      <td><input type="text" value="${ board.readcount }"  readonly /></td>
    </tr>
    <tr>
      <td>작성일</td>
      <td><input type="text" value="${board.regdate}" readonly/></td>
      <td>글쓴이</td>
      <td><input type ="text" value="${board.writer}" readonly/></td>
    </tr>
    <tr>
      <td>제목</td>
      <td colspan ="3">
      	<input type = "text" name="title" value="${board.title}"/>
      </td>
    </tr>
    <tr>
      <td>내용</td>
      <td colspan ="3">
      	<textarea name="cont">${ board.cont }</textarea> 
      </td>
    </tr>
    <tr>
     <td colspan="4">
     	<input type="submit" class="btn btn-primary" value="수정" />
     	<input type="reset" class="btn btn-primary" value="취소" />
     </td>
    </tr>
   </table>
   </form>
   
   </div>
</body>
</html>






