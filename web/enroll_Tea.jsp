<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>教师注册</title>
    <link href="./css/enroll_Tea.css" rel="stylesheet" type="text/css"/>
    <link rel="icon" href="./img/avatar.jpg" sizes="32x32"/>
</head>

<body>
<div class="rg_layout">
    <div class="rg_left">
        <p>教师注册</p>
        <p>USER REGISTER</p>
    </div>
    <div class="rg_center">
        <div class="rg_form">
            <form action="enroll_TeaDo.jsp" method="post">
                <table>
                    <tr>
                        <td class="td_title" colspan="2">欢迎使用高校社团管理系统</td>
                    </tr>
                    <tr class="td_null">
                    </tr>
                    <tr>
                        <td class="td_left"><label for="teanumber">工号</label></td>
                        <td class="td_right"><input type="text" name="teanumber" id="teanumber" placeholder="请输入工号">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="teapassword">密码</label></td>
                        <td class="td_right"><input type="teapassword" name="teapassword" id="teapassword" placeholder="请输入密码"></td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="teaemail">Email</label></td>
                        <td class="td_right"><input type="email" name="teaemail" id="teaemail" placeholder="请输入邮箱"></td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="teaname">姓名</label></td>
                        <td class="td_right"><input type="text" name="teaname" id="teaname" placeholder="请输入姓名"></td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="teaphone">手机号</label></td>
                        <td class="td_right"><input type="text" name="teaphone" id="teaphone" placeholder="请输入手机号"></td>
                    </tr>
                    <tr>
                        <td class="td_left"><label>性别</label></td>
                        <td class="td_right"><input type="radio" name="gender" value="male">男
                            <input type="radio" name="gender" value="female">女
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="teabirthday">出生日期</label></td>
                        <td class="td_right"><input type="date" name="teabirthday" id="teabirthday" value="2001-01-01"></td>
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
        <p>已有账号?<a href="Log_Tea.jsp">立即登录</a></p>
    </div>
</div>
</body>

</html>