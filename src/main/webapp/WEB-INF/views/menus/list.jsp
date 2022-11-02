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
   <h2>메뉴 목록</h2>
   <table>
   <c:forEach var="menu" items="${ menuList }">
     <tr>
       <td>${ menu.menu_id }</td>
       <td>${ menu.menu_name }</td>
       <td>${ menu.menu_seq }</td>
       <td><a href="/Menu/Delete?menu_id=${ menu.menu_id }">삭제</a></td>
       <td><a href="/Menu/UpdateForm?menu_id=${ menu.menu_id }">수정</a></td>
     </tr>
   </c:forEach>   
   </table>
   
   <div>
     <a href="/Menu/WriteForm">메뉴 추가</a>
     <a href="/Menu/WriteForm2">메뉴 추가2</a>
   </div>
   
 </div>
    
</body>
</html>






