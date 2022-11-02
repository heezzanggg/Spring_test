<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="/css/common.css" />

<style>
   h2 { margin : 30px 0;   }
   li {
       width :  800px;
       border:1px solid #c0c0c0;
       padding : 10px;
   } 
   #nav {
       width :  800px;
       border:1px solid #c0c0c0;
       padding : 10px;
   }
</style>

</head>
<body>
  <div id="main">
	<h2>${ uid } 내용보기</h2>
	<div>
	  <ul>
	    <li>아이디 : ${ vo.userid }</li>
	    <li>암호 : ${ vo.passwd }</li>
	    <li>이름 : ${ vo.username }</li>
	    <li>날짜 : ${ vo.indate }</li>
	  </ul>
	  <div id="nav" >
	     <a class="btn btn-primary" href="/WriteForm">회원가입</a>
	     <a class="btn btn-primary" href="/UpdateForm?userid=${ vo.userid }">회원수정</a>
	     <a class="btn btn-primary" href="/Delete?userid=${ vo.userid }">회원삭제</a>
	     <a class="btn btn-primary" href="/List">회원목록</a>
	     <a class="btn btn-primary" href="/">Home</a>
	  </div>
	</div> 
  </div>	
	
	
</body>
</html>






