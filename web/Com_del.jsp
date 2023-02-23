<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2023/1/3
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding ("UTF-8");%>
<html>
<head>
    <title>社团投诉管理</title>
    <link rel="stylesheet" href="./css/tb_show.css" type="text/css">
    <style>
        td{
            width: 100px;
            height: 10px;
        }
    </style>
</head>
<body>
<%!
    public static final String DBDRIVER = "com.mysql.cj.jdbc.Driver";
    //    驱动路径
    public static final String DBURL = "jdbc:mysql://localhost:3306/web_keshe?serverTimezone=UTC&useSSL=false&useUnicode=true/useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&useSSL=true";
    //    web_keshe数据库名
    public static final String DBUSER = "root";
    //    数据库用户名
    public static final String DBPASS = "";
    //    数据库密码
%>

<%
    /*这里的一下参数也可以去下面定义*/
    Connection conn = null;
    /*定义一个创建连接的变量，初始值设为空，当需要连接时，通过
    Connection conn=DriverManager.getConnection(URL,Username,Password);
    去创建连接， 方便后面关闭操作*/
    PreparedStatement pst = null;
    /*Statement和PreparedStatament的区别
    Statement执行查询调用方法executeQuery(sql)
    执行更删改调用方法executeUpdate(sql)
    PreparedStatement执行查询调用方法executeQuery()
    执行更删改调动方法executeUpdate()*/
    ResultSet rs = null;
%>
<%
    try {
        Class.forName(DBDRIVER);
        //注册驱动
        conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
        //获取链接
        request.setCharacterEncoding("utf-8");
        String sql_select = "select * from tb_soc_com";
        //获取操作数据库中的表对象
        pst = conn.prepareStatement(sql_select);
        rs = pst.executeQuery();
        //执行sql_select，获取结果集
%>
<table border="1" align="center">
    <tr>
        <td style="width: 80px">投诉编号</td>
        <td>社团名称</td>
        <td>举报原因</td>
        <td>详情描述</td>
        <td>证据补充链接</td>
        <td style="width: 120px">举报人联系方式</td>
        <td>备注</td>
        <td>数据操作</td>
    </tr>
    <%
        while (rs.next()) {
            //处理结果
    %>
    <tr>
        <td><%= rs.getString("comNumber") %>
        </td>
        <td><%= rs.getString("comSocName")%>
        </td>
        <td><%= rs.getString("comCause")%>
        </td>
        <td><%= rs.getString("comIssue")%>
        </td>
        <td><%= rs.getString("comProof")%>
        </td>
        <td><%= rs.getString("comPerson")%>
        </td>
        <td><%= rs.getString("comRemark")%>
        </td>
        <td>
            &nbsp;<button><a href="Com_del_delete.jsp?comNumber=<%=rs.getString("comNumber")%>">已解决</a></button>
        </td>
    </tr>
    <%
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    %>
</table>

</body>
</html>
