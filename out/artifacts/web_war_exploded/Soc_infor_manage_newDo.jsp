<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2023/1/4
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding ("UTF-8");%>
<html>
<head>
    <title>新建社团（执行）</title>
</head>
<body>

<%
    String socName = request.getParameter("socName");   //社团名称
    String soc_PreNumber = request.getParameter("soc_PreNumber");   //社长学号
    String soc_TeaNumber = request.getParameter("soc_TeaNumber");   //指导教师工号
    String socMemberNumber = request.getParameter("socMemberNumber");   //社团成员人数
    String socMadeDate = request.getParameter("socMadeDate");   //社团成立日期
    String socStar = request.getParameter("socStar");   //社团星级
%>

<%
    // JDBC driver name and database URL
    final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    final String DB_URL = "jdbc:mysql://localhost:3306/web_keshe?serverTimezone=UTC&useSSL=false&useUnicode=true/useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&useSSL=true";

    //  Database credentials
    final String USER = "root";
    final String PASS = "";
%>

<%
    Connection conn = null;
    Statement stmt = null;
    try{
        //STEP 2: Register JDBC driver
        Class.forName(JDBC_DRIVER);

        //STEP 3: Open a connection
        System.out.println("Connecting to database...");
        conn = DriverManager.getConnection(DB_URL,USER,PASS);

        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        stmt = conn.createStatement();
        String sql;
        sql = "INSERT INTO tb_soc (socName, soc_PreNumber, soc_TeaNumber ,socMemberNumber ,socMadeDate ,socStar)VALUES ('"+socName+"', '"+soc_PreNumber+"', '"+soc_TeaNumber+"', '"+socMemberNumber+"' ,'"+socMadeDate+"' ,'"+socStar+"');";
        stmt.execute(sql);

        //STEP 6: Clean-up environment
        stmt.close();
        conn.close();
%>
<script>
    alert("新建成功")
    window.location.href="Soc_infor_manage.jsp"
</script>
<%
    }catch(SQLException se){
        //Handle errors for JDBC
        se.printStackTrace();
    }catch(Exception e){
        //Handle errors for Class.forName
        e.printStackTrace();
    }finally{
        //finally block used to close resources
        try{
            if(stmt!=null)
                stmt.close();
        }catch(SQLException se2){
        }// nothing we can do
        try{
            if(conn!=null)
                conn.close();
        }catch(SQLException se){
            se.printStackTrace();
        }//end finally try
    }//end try
    System.out.println("Goodbye!");
%>
</body>
</html>
