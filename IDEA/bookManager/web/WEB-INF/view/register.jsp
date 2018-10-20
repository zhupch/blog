<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/17
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <meta name="author" content="Vincent Garreau" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" media="screen" href="../resource/css/style.css">
    <link rel="stylesheet" type="text/css" href="../resource/css/reset.css"/>
    <link rel="stylesheet" href="../resource/css/bootstrap.min.css" type="text/css" />
</head>
<body >

<form name="regist" method="post">
    <div class="form-group">
        <label for="exampleInputEmail1">Username</label>
        <input type="text" class="form-control" id="exampleInputEmail1"  placeholder="Enter username"name="username">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"name="password">
    </div>

    <button type="submit" class="btn btn-primary" onclick="userregister()">Submit</button>
</form>
<script language="javascript">




    function userregister(){
        //alert("register success!!")
        document.regist.action="/regist_commit";
        document.regist.submit();
    }
</script>

</body>
</html>
