<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2023/1/3
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding ("UTF-8");%>
<html>
<head>
    <title>提示</title>
</head>
<body>

<%
    String comSocName = request.getParameter("societies_name");
    String comCause = request.getParameter("select2");
    String comIssue = request.getParameter("describe");
    String comProof = request.getParameter("url");
    String comPerson = request.getParameter("email");
    String comRemark = request.getParameter("verifiation code");
%>

<%
    // JDBC driver name and database URL
    final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    final String DB_URL = "jdbc:mysql://localhost:3306/web_keshe?serverTimezone=UTC&useSSL=false&useUnicode=true/useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&useSSL=true";

    //  Database credentials
    final String USER = "root";
    final String PASS = "";
%>
<div>投诉失败，请返回刷新页面后重新输入</div>
<a href="Complaint.jsp"><button>确定</button></a>
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
        sql = "INSERT INTO tb_soc_com (comSocName, comCause, comIssue ,comProof ,comPerson ,comRemark)VALUES ('"+comSocName+"', '"+comCause+"', '"+comIssue+"', '"+comProof+"' ,'"+comPerson+"' ,'"+comRemark+"');";
        stmt.execute(sql);

        //STEP 6: Clean-up environment
        stmt.close();
        conn.close();
%>
<script>
    alert("投诉成功，感谢您对西建大学生活动的监督！")
    window.location.href="index.jsp"
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
