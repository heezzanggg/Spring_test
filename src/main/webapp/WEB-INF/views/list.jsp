<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/common.css" />

<style>
  h2 {  margin : 30px 0;   } 
  
  .item {
      width : 350px; 
      margin : 20px; 
      padding : 10px;
      border : 1px solid blue;
      border-radius: 5px;  
      float: left;
   }
   
   li { margin : 3px;  }

</style>

</head>
<body>

 <div id="main">
   <h2>사용자 목록</h2>
   <c:forEach var="user" items="${ userList }">
   <div class="item">
   <ul>
     <li>아이디: ${ user.userid }</li>
     <li>이름:  <a href="/View?userid=${ user.userid }">${ user.username }</a></li>
     <li>가입일: ${ user.indate }</li>
   </ul>
   </div>
   </c:forEach>   
 </div>
    
</body>
</html>






