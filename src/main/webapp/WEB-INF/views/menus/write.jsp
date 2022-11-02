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
   <form action="/Menu/Write" method="POST">
   <table>
   <tr>
     <td>메뉴아이디</td>
     <td><input type="text" name="menu_id"  placeholder="MENU02" /></td>
   </tr>
   <tr>
     <td>메뉴이름</td>
     <td><input type="text" name="menu_name"  placeholder="메뉴이름" /></td>
   </tr>
   <tr>
     <td>메뉴순번</td>
     <td><input type="number" name="menu_seq"  placeholder="메뉴순서" /></td>
   </tr>
   <tr>     
     <td colspan="2"><input type="submit" value="추가" /></td>
   </tr>
   </table>
   </form>
   </div>
</body>
</html>






