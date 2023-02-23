<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理员登录</title>
    <link href="./css/Log.css" rel="stylesheet" type="text/css"/>
    <link rel="icon" href="./img/avatar.jpg" sizes="32x32"/>
</head>
<body>
    <div class="container">
        <div style="float: left;">
            <a href="index.jsp">
                <img src="./img/Log1.png" style="float: left; width: 50px; height: 50px; padding-left: 50px; padding-top: 20px;">
            </a>
        </div>
        <div class="login-wrapper">
            <div class="header">管理员登录</div>
            <form class="form-wrapper" action="login" method="post" id="loginForm">
                <input type="text" id="username" name="username" placeholder="用户名" class="input-item" value="${massageMoudle.object.userName}">
                <input type="password" id="userpassword" name="userpassword" placeholder="密码" class="input-item" value="${massageModule.object.userPassword}">
                <span id="msg" style="font-size: 12px;color: red">${massageMoudle.msg}</span> </br>
                <button type="button" class="btn" id="loginBtn">登录</button>
            </form>
            <div class="msg">
                没有账户？
                <a href="Forus.jsp">联系开发者</a>
            </div>
        </div>
    </div>
</body>

<%--引入jQuery.js文件--%>
<script type="text/javascript" src="./js/jquery-3.4.1.js"></script>
<script type="text/javascript">

    /**
     * 登录表单前端验证（通过id选择器绑定点击事件）
     */
    $("#loginBtn").click(function (){
        //获取用户姓名和密码的值
        let username = $("#username").val();
        let userpassword = $("#userpassword").val()

        //判断姓名是否为空
        if (isEmpty(username)){
            //如果姓名为空，则提醒用户（span标签赋值），并且return
            $("#msg").html("用户名不可为空！");
            return;
        }
        //判断密码是否为空
        if (isEmpty(userpassword)){
            //如果密码为空，则提醒用户
            $("#msg").html("密码不可为空！");
            return;
        }
        //如果都不为空，则提交表单
        $("#loginForm").submit();
    })

    /**
     * 判断字符串是否为空
     *      如果为空返回true，如果不为空返回false
     * @param str
     * @returns {boolean}
     */
    function isEmpty(str){
        if(str == null || str.trim() == ""){
            return true;
        }
        return false;
    }
</script>
</html>