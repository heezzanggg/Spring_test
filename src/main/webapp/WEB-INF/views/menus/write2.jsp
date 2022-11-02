<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/css/common.css" rel="stylesheet">
</head>
<body>
   <div id="main">
   <h2>메뉴 추가</h2>
   <form action="/Menu/Write2" method="POST">
   <table>  
   <tr>
     <td>메뉴이름</td>
     <td><input type="text" name="menu_name"  placeholder="메뉴이름" /></td>
   </tr>   
   <tr>     
     <td colspan="2"><input type="submit" value="추가" /></td>
   </tr>
   </table>
   </form>
   </div>
</body>
</html>






