<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2023/1/4
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>社团学生信息管理</title>
    <link rel="stylesheet" href="./css/tb_show.css" type="text/css">
</head>
<body>
<div style="padding-top: 20px;padding-left: 20px">
    <form action="SocStu_infor_manage_select.jsp">
        请输入您要查询的社团名称：
        <input type="text" id="socName" name="socName">&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" value="确定">
    </form>

    <div style="font-size: 10px;color: red">注：请根据“社团管理”中的社团名称填写</div>
</div>

</body>
</html>
</body>
</html>
