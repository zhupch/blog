<%@ page language="java" pageEncoding="gb2312"%>

<html lang="en">
<head>
	<meta charset="utf-8">
	<title>�û���¼����</title>
	<%--<meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">--%>
	<meta name="author" content="Vincent Garreau" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<link rel="stylesheet" media="screen" href="resource/css/style.css">
	<link rel="stylesheet" type="text/css" href="resource/css/reset.css"/>
	<link rel="stylesheet" href="resource/css/bootstrap.min.css" type="text/css" />
</head>
<body>

<div id="particles-js">
	<div class="login">

		<form method="post" name="login">
		<div class="login-top">
			��¼
		</div>
		<div class="login-center clearfix">
			<div class="login-center-img"><img src="resource/img/name.png"/></div>
			<div class="login-center-input">
				<input type="text" name="username" value="root" placeholder="�����������û���" onfocus="this.placeholder=''" onblur="this.placeholder='�����������û���'"/>
				<div class="login-center-input-text">�û���</div>
			</div>
		</div>
		<div class="login-center clearfix">
			<div class="login-center-img"><img src="resource/img/password.png"/></div>
			<div class="login-center-input">
				<input type="password" name="password"value="root" placeholder="��������������" onfocus="this.placeholder=''" onblur="this.placeholder='��������������'"/>
				<div class="login-center-input-text">����</div>
			</div>
		</div>
		<div align="center">
			<input type="button" name="login" value="��¼" class="btn btn-primary btn-lg btn-block" onclick="userlogin();">
			<input type="button" name="register" value="ע��" class="btn btn-secondary btn-lg btn-block" onclick="userregister();">
		</div>
		</form>
	</div>
	<div class="sk-rotating-plane"></div>
</div>

<script language="javascript">

    function userlogin(){
        document.login.action="user/login";
        document.login.submit();
    }
    function userregister(){
        document.login.action="user/register";
        document.login.submit();
    }
</script>
<!-- scripts -->
<script src="resource/js/particles.min.js"></script>
<script src="resource/js/app.js"></script>
<script type="text/javascript">
    function hasClass(elem, cls) {
        cls = cls || '';
        if (cls.replace(/\s/g, '').length == 0) return false; //��clsû�в���ʱ������false
        return new RegExp(' ' + cls + ' ').test(' ' + elem.className + ' ');
    }

    function addClass(ele, cls) {
        if (!hasClass(ele, cls)) {
            ele.className = ele.className == '' ? cls : ele.className + ' ' + cls;
        }
    }

    function removeClass(ele, cls) {
        if (hasClass(ele, cls)) {
            var newClass = ' ' + ele.className.replace(/[\t\r\n]/g, '') + ' ';
            while (newClass.indexOf(' ' + cls + ' ') >= 0) {
                newClass = newClass.replace(' ' + cls + ' ', ' ');
            }
            ele.className = newClass.replace(/^\s+|\s+$/g, '');
        }
    }
</script>

</body>
</html>


<%--<html>
<head>
	<title>ͼ�����ϵͳ</title>
	<link rel="stylesheet" href="resource/css/bootstrap.min.css" type="text/css" />
</head>
<body >

<form method="post" name="login">
	<table>
		<caption>�û���¼</caption>
		<tr>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="username">�û���</span>
				</div>
				<input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="username">
			</div>
			<td>��¼��<input type="text" name="username"  value="root" size="20"/></td>
		</tr>
		<tr>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="password">����</span>
				</div>
				<input type="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="password">
			</div>
			<td>��&nbsp;&nbsp;��<input type="password"  name="password" value="root" size="21"/></td>
		</tr>
		<tr>
			<td>
				<input type="button" name="login" value="��¼" class="btn btn-primary" onclick="userlogin();">
				<input type="button" name="register" value="ע��" class="btn btn-light" onclick="userregister();">
			</td>
		</tr>

	</table>
	<span id="name"></span>

</form>

<script language="javascript">

    function userlogin(){
        document.login.action="user/login";
        document.login.submit();
    }
    function userregister(){
        document.login.action="user/register";
        document.login.submit();
    }
</script>
&lt;%&ndash;<script src="resource/jquery-3.1.1.min.js"></script>
<script>
    $.ajax({
        url:"http://localhost:8080/kk",
        type:"GET",
        success:function(data){
            console.log(data);
            $("#name")[0].innerHTML=data[0].username
        }
    });
</script>&ndash;%&gt;
</body>
</html>--%>
