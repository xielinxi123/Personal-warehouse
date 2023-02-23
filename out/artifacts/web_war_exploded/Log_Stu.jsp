<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding ("UTF-8");%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户登录</title>
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
            <div class="header">登录</div>
            <form class="form-wrapper" action="stulogin" method="post" id="stuLoginForm">
                <input type="text" id="stuname" name="stuname" placeholder="用户名" class="input-item" value="${stuMassageMoudle.stuobject.stuName}">
                <input type="password" id="stupassword" name="stupassword" placeholder="密码" class="input-item"  value="${stuMassageMoudle.stuobject.stuPassword}">
                <span id="stumsg" style="font-size: 12px;color: red">${stuMassageMoudle.stumsg}</span> </br>
                <button class="btn" type="button" id="stuLoginBtn">登录</button>
            </form>
            <div class="msg">
                没有账户？
                <a href="enroll.jsp">注册</a>
            </div>
        </div>
    </div>
</body>

<%--引入jQuery.js文件--%>
<script type="text/javascript" src="./js/jquery-3.4.1.js"></script>
<script>

    /**
     * 学生登录前端验证
     */
    $("#stuLoginBtn").click(function (){
        //获取用户填入的用户名和密码的值
        let stuname = $("#stuname").val();
        let stupassword = $("#stupassword").val();

        //判断姓名是否为空
        if (isEmpty(stuname)){
            //如果姓名为空，则提醒用户（给span标签赋值），然后return
            $("#stumsg").html("用户名不可为空")
            return;
        }

        //判断密码是否为空
        if (isEmpty(stupassword)){
            //如果密码为空，则提醒用户
            $("#stumsg").html("密码不可为空")
            return;
        }

        //如果都不为空，则提交表单
        $("#stuLoginForm").submit();
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