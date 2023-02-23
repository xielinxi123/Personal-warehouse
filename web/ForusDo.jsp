<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2023/1/3
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding ("UTF-8");%>
<html>
<head>
    <title>提示</title>
</head>
<body>

<%
    String username = request.getParameter("fname");
    String tel = request.getParameter("phone");
    String province = request.getParameter("s_province");
    String city = request.getParameter("s_city");
    String county = request.getParameter("s_county");
    String message = request.getParameter("subject");
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
        sql = "INSERT INTO tb_forus (username, tel, province ,city ,county ,message)VALUES ('"+username+"', '"+tel+"', '"+province+"', '"+city+"' ,'"+county+"' ,'"+message+"');";
        stmt.execute(sql);

        //STEP 6: Clean-up environment
        stmt.close();
        conn.close();
%>
<script>
    alert("联系成功，请耐心等待我们的工作人员向您致电！")
    window.location.href="Forus.jsp"
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
