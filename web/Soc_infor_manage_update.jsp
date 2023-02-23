<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2023/1/4
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>更新社团信息</title>
    <link rel="stylesheet" href="./css/tb_show.css" type="text/css">
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
    String socNumber = null;
%>
<%
    try {
        Class.forName(DBDRIVER);
        conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
        request.setCharacterEncoding("utf-8");
        socNumber = request.getParameter("socNumber");
        String sql_update = "select * from tb_soc where socNumber='" +socNumber+ "'";
        //获取你要更新数据的id的数据库信息
        pst = conn.prepareStatement(sql_update);
        rs = pst.executeQuery();
        if (rs.next()) {
%>
<form action="Soc_infor_manage_updateDo.jsp?socNumber=<%=rs.getString("socNumber")%>" method="post">
    <%--切换到Teacher_Manage_updataDo.jsp,显示要更新的数据信息--%>
    &nbsp;社团编号：<br/><input type="text" value="<%=rs.getString("socNumber")%>" name="socNumber"><br/>
    &nbsp;社团名称： <br/><input type="text" value="<%=rs.getString("socName") %>" name="socName"><br/>
    &nbsp;社长学号： <br/><input type="text" value="<%=rs.getString("soc_PreNumber") %>" name="soc_PreNumber"><br/>
    &nbsp;指导教师工号： <br/><input type="text" value="<%=rs.getString("soc_TeaNumber") %>" name="soc_TeaNumber"><br/>
    &nbsp;社团人数： <br/><input type="text" value="<%=rs.getString("socMemberNumber") %>" name="socMemberNumber"><br/>
<%--    &nbsp;创立日期： <br/><input type="text" value="<%=rs.getString("socMadeDate") %>" name="socMadeDate"><br/>--%>
    &nbsp;星级： <br/><input type="text" value="<%=rs.getString("socStar") %>" name="socStar"><br/>
    <input type="submit" value="修改">&nbsp;&nbsp;&nbsp;&nbsp;
        <button><a href="Soc_infor_manage.jsp">取消</a></button>
    <br/>
    <br/>
    <div style="font-size: 10px;color: red">注：暂不支持修改社团创立日期</div>
</form>
<%
        }
    } catch (Exception e) {
        System.out.println(e);
    }
%>
</body>
</html>
