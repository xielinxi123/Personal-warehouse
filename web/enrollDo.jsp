<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2023/1/2
  Time: 13:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding ("UTF-8");%>
<html>
<head>
    <link rel="icon" href="./img/avatar.jpg" sizes="32x32"/>
    <title>提示</title>
</head>
<body>

<%
    String stunumber = request.getParameter("stunumber");   //学生学号
    String stupassword = request.getParameter("stupassword");   //学生密码
    String stuemail = request.getParameter("stuemail");   //学生邮箱
    String stuname = request.getParameter("stuname");   //学生姓名
    String stuphone = request.getParameter("stuphone");   //学生联系电话
    String stubirthday = request.getParameter("stubirthday");   //学生生日
    String stumsg1 = "未知错误，请联系管理员！";
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
    PreparedStatement pst = null;
    ResultSet rs = null;
    try{
        //STEP 2: Register JDBC driver
        Class.forName(JDBC_DRIVER);

        //STEP 3: Open a connection
        System.out.println("Connecting to database...");
        conn = DriverManager.getConnection(DB_URL,USER,PASS);

        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        stmt = conn.createStatement();
        String sql , sql1 = null;
        sql1 = "SELECT stuId FROM tb_stu WHERE stuName = \""+stuname+"\";";
        pst = conn.prepareStatement(sql1);
        rs = pst.executeQuery();
        String rs_stuID = null;
        while(rs.next()){      //这里必须循环遍历
            rs_stuID = rs.getString("stuId");//返回一条记录
            System.out.println(rs_stuID );
        }
        if ( rs_stuID == null){     //判断用户名是否重复
            sql = "INSERT INTO tb_stu (stuNumber, stuName, stuPassword ,stuEmail ,stuPhone ,stuBirthDay)VALUES ('"+stunumber+"', '"+stuname+"', '"+stupassword+"', '"+stuemail+"' ,'"+stuphone+"' ,'"+stubirthday+"');";
            stmt.execute(sql);
            stumsg1 = "注册成功！请返回登录";
        }else {
            stumsg1 = "注册失败！用户名已存在，请更换用户名后重试";
        }

        //STEP 6: Clean-up environment
        stmt.close();
        conn.close();
%>
<script>
    alert("<%=stumsg1%>")
    window.location.href="Log_Stu.jsp"
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
