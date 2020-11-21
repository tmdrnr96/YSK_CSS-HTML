<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>form태그를 통한 데이터 전달 2</title>
		<script type="text/javascript">
		
		function check() {
			
			//form태그에 name을 지정해두고 찾아오는 방법
			var f = document.ff;//form태그에 지정된 name을 통해 가져올 수 있다.
			/*form태그 이외에 담겨져 있는 name속성은 파라미터로 넘길 수 없다.  */
			
			var hobby = f.hobby.value;
			if(hobby == ''){
				alert("취미를 입력하세요!");
				f.hobby.focus();//hobby라는 입력상자안에 커서를 강제로 집어 넣는다.
				return;
			}
			
			f.submit();
			
		}
		</script>
	</head>
	
	<body>
		<form name = "f">
		</form>
	
		<form action="login.jsp"
			  method = "get"
			  name = "ff">
			  
			  <table border = "1">
			  	<tr>
			  		<th>취미</th>
			  		<td><input name = hobby></td>
			  	</tr>
			  	
			  	<tr>
			  		<th>특기</th>
			  		<td><input name = "tukgi"></td>
			  	</tr>
			  	
			  	<tr>
			  		<th>특기</th>
			  		<td><div name = "hi">안녕</div></td>
			  	</tr>
			  	
			  	<tr>
			  		<input type = "button" value = "전송"
			  				onclick = "check();">
			  	</tr>
			  
			  </table>
		
		</form>
	</body>
</html>