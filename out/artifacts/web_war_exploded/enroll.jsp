<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding ("UTF-8");%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>学生注册</title>
    <link href="./css/enroll.css" rel="stylesheet" type="text/css"/>
    <link rel="icon" href="./img/avatar.jpg" sizes="32x32"/>
</head>

<body>
    <div class="rg_layout">
        <div class="rg_left">
            <p>新用户注册</p>
            <p>USER REGISTER</p>
        </div>
        <div class="rg_center">
            <div class="rg_form">
                <form action="enrollDo.jsp" method="post">
                    <table>
                        <tr>
                            <td class="td_title" colspan="2">欢迎使用高校社团管理系统</td>
                        </tr>
                        <tr class="td_null">
                        </tr>
                        <tr>
                            <td class="td_left"><label for="stunumber">学号</label></td>
                            <td class="td_right"><input type="text" name="stunumber" id="stunumber" placeholder="请输入学号">
                            </td>
                        </tr>
                        <tr>
                            <td class="td_left"><label for="stupassword">密码</label></td>
                            <td class="td_right"><input type="stupassword" name="stupassword" id="stupassword"
                                    placeholder="请输入密码"></td>
                        </tr>
                        <tr>
                            <td class="td_left"><label for="stuemail">Email</label></td>
                            <td class="td_right"><input type="email" name="stuemail" id="stuemail" placeholder="请输入邮箱"></td>
                        </tr>
                        <tr>
                            <td class="td_left"><label for="stuname">设置昵称</label></td>
                            <td class="td_right"><input type="text" name="stuname" id="stuname" placeholder="请输入昵称(暂仅支持英文)"></td>
                        </tr>
                        <tr>
                            <td class="td_left"><label for="stuphone">手机号</label></td>
                            <td class="td_right"><input type="text" name="stuphone" id="stuphone" placeholder="请输入手机号"></td>
                        </tr>
                        <tr>
                            <td class="td_left"><label>性别</label></td>
                            <td class="td_right"><input type="radio" name="gender" value="male">男
                                <input type="radio" name="gender" value="female">女
                            </td>
                        </tr>
                        <tr>
                            <td class="td_left"><label for="stubirthday">出生日期</label></td>
                            <td class="td_right"><input type="date" name="stubirthday" id="stubirthday" value="2001-01-01"></td>
                        </tr>
                        <tr class="td_null">
                        </tr>
                        <tr>
                            <td colspan="2" align="center"><input type="submit" id="btn_sub" value="注册"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="rg_right">
            <p>已有账号?<a href="Log_Stu.jsp">立即登录</a></p>
        </div>
    </div>
</body>

</html>