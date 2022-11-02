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
   h2              {  margin : 30px  0px; }
   td:first-child  {  width:150px; text-align : center;  }
   
   input[type=text], input[type=password] { width: 100%;  }

</style>

<script src="https://code.jquery.com/jquery-3.6.1.min.js""></script>

<script>

$(function() {    
	  $('#btnHome').on('click', function( e ) {		  
		  location.href = '/';
	  } );
	
	  $('[name=userid]').on('focus', function() {
		  $('#uid').empty();
		  $('[name=userid]').val('').css( {
			  'border-color' : 'black',
			  'border-width' : '1px',			  
			  'border-style' : 'solid'			  
		  });
		  
	  }) 
	
	  $('form').on('submit', function( e ) {
		  alert($('input').eq(2).val());
		  if( $('[name=userid]').val() == ''  ) {
			 // alert('Userid 필요');
			 $('[name=userid]').val('아이디를 입력하세욤');
			 $('#uid').html('<b style="color:red">아이디를 입력하세욤</b>');
			 $('[name=userid]').css('border', '1px solid red');
			  e.preventDefault();
			  //e.stopPropagation();
		  }
	  })
});

</script>

</head>
<body>

<div id="main">
	<h2>회원 수정</h2>
	<form action="/Update" method="POST">
	<table>
	<tr> 
	   <td>아이디</td>
	   <td><input type="text" name="userid"  value="${ user.userid }"  readonly />
	   <span id="uid"></span>
	   </td>
	</tr> 
	<tr> 
	   <td>암호</td>
	   <td><input type="password" name="passwd" value="${ user.passwd }" /></td>
	</tr> 
	<tr> 
	   <td>이름</td>
	   <td><input type="text" name="username" value="${ user.username }" /></td>
	</tr> 
	<tr> 
	   <td>날짜</td>
	   <td><input type="date" value="${ user.indate }" readonly /></td>
	</tr> 
	<tr> 
	   <td colspan="2">
	      <input type="submit" value = "수정" class="btn btn-primary" />
	      <input type="button" value = "Home" id="btnHome" class="btn btn-primary" />
	      <a class="btn btn-primary" href="#" role="button">Link</a>
	   </td>
	</tr> 
	</table>
	</form>
</div>

</body>
</html>




