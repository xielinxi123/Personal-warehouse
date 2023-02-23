<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2022/12/30
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>欢迎使用高校社团管理系统</title>
  <link rel="stylesheet" href="./css/index.css" type="text/css">
  <link rel="icon" href="./img/avatar.jpg" sizes="32x32"/>
</head>
<body>
<div class="header">
  <ul class="tabbar">
    <image src="./img/index1.png" alt="西安建筑科技大学" style="width: 30px;height: 30px; float: left;padding-left: 20px;padding-top:11px;padding-right: 10px;"/>
    <image src="./img/LOGO.PNG" alt="Societies Center" style="width: 30px;height: 30px; float: left;padding-left: 20px;padding-top:11px;padding-right: 20px;"/>
    <li><a href="#">社团展示</a></li>
    <li><a href="rule.jsp">规章制度</a></li>
    <li><a href="#">学管风采</a></li>
    <li><a href="Complaint.jsp">投诉社团</a></li>
    <li><a href="Forus.jsp">联系开发者</a></li>
    <li style="float: right;"><a href="enroll.jsp">学生注册</a></li>
    <li style="float: right;"><a href="Log_Manage.jsp">管理员登录</a></li>
    <li style="float: right;"><a href="Log_Tea.jsp">教师登录</a></li>
  </ul>
</div>

<div class="body">
  <div class="title">Societies Center<br/>高校社团管理系统</div>

  <div class="goon">
    <a href="Log_Stu.jsp"><button class="goon_a">立即进入</button></a>
  </div>

  <div class="footer">
    <p style="text-align: center; font-size: 15px;">信管2002&nbsp;&nbsp;|&nbsp;&nbsp;谢林希&nbsp;&nbsp;|&nbsp;&nbsp;2022年web课程设计&nbsp;&nbsp;©</p>
  </div>
</div>
</body>
</html>
