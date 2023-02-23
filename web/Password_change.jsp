<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理员信息修改</title>
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
    String userName = null;
%>
<%
    try {
        Class.forName(DBDRIVER);
        conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
        request.setCharacterEncoding("utf-8");
        userName = request.getParameter("userName");
        String sql_update = "select * from tb_user where userName='" +userName+ "'";
        //获取你要更新数据的id的数据库信息
        pst = conn.prepareStatement(sql_update);
        rs = pst.executeQuery();
        if (rs.next()) {
%>
<form action="Password_changeDo.jsp?userId=<%=rs.getString("userId")%>" method="post">
    <%--切换到Teacher_Manage_updataDo.jsp,显示要更新的数据信息--%>
    &nbsp;管理员姓名： <br/><input type="text" value="<%=rs.getString("userName") %>" name="userName"><br/>
    &nbsp;管理员密码： <br/><input type="text" value="<%=rs.getString("userPassword") %>" name="userPassword"><br/>
    &nbsp;管理员年龄： <br/><input type="text" value="<%=rs.getString("userAge") %>" name="userAge"><br/>
    <input type="submit" value="修改">&nbsp;&nbsp;&nbsp;&nbsp;
    <button><a href="BM_welcome.jsp">取消</a></button>
    <br/>
    <br/>
</form>
<%
        }
    } catch (Exception e) {
        System.out.println(e);
    }
%>
</body>
</html>