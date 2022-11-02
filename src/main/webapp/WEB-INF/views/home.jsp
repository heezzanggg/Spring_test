<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/common.css" />
<style>
   h2 {  margin-top:30px;
         margin-bottom: 30px; 
   }
   
   li{height : 24px;}

</style>
</head>
<body>

 <div id="main">
   <h2>Home</h2>
   <ul>
	   <li><a href="/List">유저 목록</a><br></li>
	   <li><a href="/WriteForm">회원 가입</a><br></li> 
	   <li><hr/></li>
	   <li><a href="/Menu/List">메뉴목록</a><br></li> 
	   <li><hr/></li>
	   <li><a href="/Board/List?menu_id=MENU01">게시판</a><br></li> 
	   <li><a href="/Board/WriteForm">글쓰기</a><br></li> 
   </ul> 
 </div>   
  
</body>
</html>












