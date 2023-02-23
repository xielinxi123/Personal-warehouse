<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2023/1/6
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>管理员信息修改（执行）</title>
</head>
<body>
<%!
    public static final String DBDRIVER="com.mysql.cj.jdbc.Driver";
    public static final String DBURL="jdbc:mysql://localhost:3306/web_keshe?serverTimezone=UTC&useSSL=false&useUnicode=true/useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&useSSL=true";
    public static final String DBUSER="root";
    public static final String DBPASS="";
%>
<%
    Connection conn=null;
    PreparedStatement pst=null;
    int rs=0;
    String userId=null;
    String userName=null;
    String userPassword=null;
    String userAge=null;
%>
<%
    try{

        Class.forName(DBDRIVER);
        conn=DriverManager.getConnection(DBURL,DBUSER,DBPASS);
        request.setCharacterEncoding("utf-8");
        userId=request.getParameter("userId");
        userName=request.getParameter("userName");
        userPassword=request.getParameter("userPassword");
        userAge=request.getParameter("userAge");

        String sql_update="update tb_user set userId='"+userId+"',userName='"+userName+"' ,userPassword='"+userPassword+"',userAge='"+userAge+"' where userId='"+userId+"'";
        pst=conn.prepareStatement(sql_update);
        rs=pst.executeUpdate();
        if(rs!=0){
            System.out.println("修改成功");
%>
<script>
    alert("修改成功！")
    window.location.href="BM_welcome.jsp"
</script>
<%
        }
    }
    catch(Exception e){
        System.out.println(e);
    }

%>
</body>
</html>
