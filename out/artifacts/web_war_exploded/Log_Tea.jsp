<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2023/1/1
  Time: 0:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>教师登录</title>
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
        <div class="header">教师登录</div>
        <form class="form-wrapper" action="tealogin" method="post" id="tealoginForm">
            <input type="text" id="teaname" name="teaname" placeholder="用户名" class="input-item" value="${teaMassageMoudle.teaobject.teaName}">
            <input type="password" id="teapassword" name="teapassword" placeholder="密码" class="input-item" value="${teaMassageMoudle.teaobject.teaPassword}">
            <span id="teamsg" style="font-size: 12px;color: red">${teaMassageMoudle.teamsg}</span> </br>
            <button type="button" class="btn" id="loginBtn">登录</button>
        </form>
        <div class="msg">
            没有账户？
            <a href="enroll_Tea.jsp">注册</a>
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
        let teaname = $("#teaname").val();
        let teapassword = $("#teapassword").val()

        //判断姓名是否为空
        if (isEmpty(teaname)){
            //如果姓名为空，则提醒用户（span标签赋值），并且return
            $("#teamsg").html("用户名不可为空！");
            return;
        }
        //判断密码是否为空
        if (isEmpty(teapassword)){
            //如果密码为空，则提醒用户
            $("#teamsg").html("密码不可为空！");
            return;
        }
        //如果都不为空，则提交表单
        $("#tealoginForm").submit();
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
