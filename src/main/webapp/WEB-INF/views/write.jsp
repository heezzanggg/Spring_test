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
   h2              {  margin : 30px  0px; }
   td:first-child  {  width:150px; text-align : center;  }
   
   input[type=text], input[type=password] { width: 100%;  }

</style>

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

<script>
// window.onload 
/*
      $('#uid') :  document.querySelector('#uid')
      
     .val() : value
     .css('color', 'red') : style='color:red'
     .html('<h2>hello</h2>') : .innerHTML = '<h2>hello</h2>' 
     .text('<h2>hello</h2>') : .innerText = '<h2>hello</h2>'
     $('input').eq(2).val();    // $('input:nth-of-type(3)').val();            
 
 */
$(function() {    
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
/*
   window.onload = function() {
	   let form = document.querySelector('form');
	   form.onsubmit = function ( e ) {
		   let useridEl = document.querySelector('[name=userid]')
		   if( useridEl.value == ''  ) {
			   alert('아이디릉 입력하세요');
		       e.preventDefault(); // 기본이벤트 방해
		       e.stopPropagation();
		   }
	   }
   }
*/
</script>

</head>
<body>

<div id="main">
	<h2>회원가입</h2>
	<form action="/Write" method="POST">
	<table>
	<tr> 
	   <td>아이디</td>
	   <td><input type="text" name="userid"  />
	   <span id="uid"></span>
	   </td>
	</tr> 
	<tr> 
	   <td>암호</td>
	   <td><input type="password" name="passwd" /></td>
	</tr> 
	<tr> 
	   <td>이름</td>
	   <td><input type="text" name="username" /></td>
	</tr> 
	<tr> 
	   <td>날짜</td>
	   <td><input type="date"  /></td>
	</tr> 
	<tr> 
	   <td colspan="2">
	      <input type="submit" value = "가입" />
	   </td>
	</tr> 
	</table>
	</form>
</div>

</body>
</html>




