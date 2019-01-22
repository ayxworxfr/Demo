<!DOCTYPE html>
<html lang = "en">
<head>
<meta charset = "utf-8">
<title>登录界面</title>
<style type = "text/css">
	.div1 {
		width: 400px; height:200px; background:#ccc; 
		
		position: relative;
		margin-top: 18%;
		margin-left:30%;
		background-image:url(background.jpg);
	}
	
	.content {
		position: absolute;
		margin-top: 15%;
		margin-left:20%;
	}
	
	.tem {
		position: absolute;
		margin-top: 32%;
		margin-left:37%;
		background: transparent; /*完全透明*/
		
		opacity: 0.7; /*整个按钮的不透明度，会影响到文字，0完全透明，1完全不透明*/

		background: rgba(255, 255, 255, 0.7);    /* 仅调节背景的色彩，并加上不透明度，此例为70%不透明的白色 */  
	}
	
	.tem2 {
		position: absolute;
		margin-top: 32%;
		margin-left:62%;
	}

</style>

<script type = "text/javascript">
	function setCookie(name, value, iDay) {
		var oDate = new Date();
		oDate.setDate(oDate.getDate() + iDay);
		
		document.cookie = name + '=' + value + ';expires=' + oDate;
	}

	function getCookie(name) {
		var arr = document.cookie.split('; ');
		
		for(var i = 0;i<arr.length;i++) {
			var arr2 = arr[i].split('=');
			
			if(arr2[0] == name) {
				return arr2[1];
			}
		}
		
		return '';
	}

	function removeCookie(name) {
		setCookie(name, 1, -1);
	}
	function autoSubmit(){
		document.getElementById("form1").submit();
	}
	window.onload = function() {
		var oForm = document.getElementById('form1');
		var oUser = document.getElementsByName('username')[0];
		var oBtn = document.getElementById('btn');

		oBtn.onclick = autoSubmit();
		
		oForm.onsubmit = function() {
			setCookie('username', oUser.value, 10);
		}
		
		oUser.value = getCookie('username');
	}
</script>


</head>

<body>
	<div class = "div1">
		<form id = "form1" action = "http://www.baidu.com" method = "get">
		<table class = "content" >
			<tr><td>用户名：</td><td><input type = "text" name = "username"></td></tr>
			<tr><td>密码：</td><td><input type = "password" name = "password"></td></tr>
		</table>
		<span class = "tem"><input type = "submit" name = "register" value = "注册"></span><span class = "tem2"><input type = "submit" name = "submit" value = "登录"></span>
		<!-- <button>按钮</button> -->
		<!-- <input type="button" id = "btn" value = "button"> -->
	</form>
	</div>
	
	
</body>


</html>