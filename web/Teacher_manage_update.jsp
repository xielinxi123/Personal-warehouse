<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2023/1/3
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>更新教师信息</title>
    <link rel="stylesheet" href="./css/tb_show.css" type="text/css">
    <style>
        input{
            margin-bottom: 12px;
            margin-left: 12px;
        }
    </style>
</head>
<body>
<%!
    public static final String DBDRIVER = "com.mysql.cj.jdbc.Driver";
    public static final String DBURL = "jdbc:mysql://localhost:3306/web_keshe?serverTimezone=UTC&useSSL=false&useUnicode=true/useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&useSSL=true";
    public static final String DBUSER = "root";
    public static final String DBPASS = "";
%>
<%
    Connection conn = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    String teaId = null;
%>
<%
    try {
        Class.forName(DBDRIVER);
        conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
        request.setCharacterEncoding("utf-8");
        teaId = request.getParameter("teaId");
        String sql_update = "select * from tb_tea where teaId='" +teaId+ "'";
        //获取你要更新数据的id的数据库信息
        pst = conn.prepareStatement(sql_update);
        rs = pst.executeQuery();
        if (rs.next()) {
%>
<form action="Teacher_manage_updataDo.jsp?teaId=<%=rs.getString("teaId")%> method="post">
    <%--切换到Teacher_Manage_updataDo.jsp,显示要更新的数据信息--%>
    &nbsp;账户编号：<br/><input type="text" value="<%=rs.getString("teaId")%>" name="teaId"><br/>
    &nbsp;工号： <br/><input type="text" value="<%=rs.getString("teaNumber") %>" name="teaNumber"><br/>
    &nbsp;姓名： <br/><input type="text" value="<%=rs.getString("teaName") %>" name="teaName"><br/>
    &nbsp;密码： <br/><input type="text" value="<%=rs.getString("teaPassword") %>" name="teaPassword"><br/>
    &nbsp;邮箱： <br/><input type="text" value="<%=rs.getString("teaEmail") %>" name="teaEmail"><br/>
    &nbsp;电话： <br/><input type="text" value="<%=rs.getString("teaPhone") %>" name="teaPhone"><br/>
<%--    &nbsp;生日： <br/><input type="date" value="<%=rs.getDate("teaBirthday") %>" name="teaBirthday"><br/>--%>
    <input type="submit" value="修改">&nbsp;&nbsp;&nbsp;&nbsp;
        <button><a href="Teacher_manage.jsp">取消</a></button>
    <br/>
    <br/>
    <div style="font-size: 10px;color: red">注：暂不支持修改教师生日信息</div>
</form>
<%
        }
    } catch (Exception e) {
        System.out.println(e);
    }
%>
</body>
</html>
