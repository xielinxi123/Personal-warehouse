<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>社团信息管理</title>
    <link rel="stylesheet" href="./css/tb_show.css" type="text/css">
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
        String sql_select = "select * from tb_soc";
        //获取操作数据库中的表对象
        pst = conn.prepareStatement(sql_select);
        rs = pst.executeQuery();
        //执行sql_select，获取结果集
%>
<table border="1" align="center">
    <tr>
        <td>社团编号</td>
        <td>社团名称</td>
        <td>社长学号</td>
        <td style="width: 120px">指导教师工号</td>
        <td>社团人数</td>
        <td>创立日期</td>
        <td style="width: 80px">星级</td>
        <td colspan="2" align="center">数据操作</td>
    </tr>
        <%
        while (rs.next()) {
            //处理结果
    %>
    <tr>
        <td><%= rs.getString("socNumber") %>
        </td>
        <td><%= rs.getString("socName")%>
        </td>
        <td><%= rs.getString("soc_PreNumber")%>
        </td>
        <td><%= rs.getString("soc_TeaNumber")%>
        </td>
        <td><%= rs.getString("socMemberNumber")%>
        </td>
        <td><%= rs.getString("socMadeDate")%>
        </td>
        <td><%= rs.getString("socStar")%>
        </td>
        <td>
            &nbsp;<button><a href="Soc_infor_manage_delete.jsp?socNumber=<%=rs.getString("socNumber")%>">注销社团</a></button>
        </td>
        <td>
            <button><a href="Soc_infor_manage_update.jsp?socNumber=<%=rs.getString("socNumber")%>">修改信息</a></button>
        </td>
    </tr>
        <%
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    %>

    <tr style="margin-top: 20px;float: right">
        <td>
            <button><a href="Soc_infor_manage_new.jsp">新建社团</a></button>
        </td>
    </tr>

</body>
</html>