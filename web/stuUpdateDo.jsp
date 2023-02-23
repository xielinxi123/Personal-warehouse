<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2023/1/5
  Time: 0:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>学生信息修改（执行）</title>
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
    String stuId=null;
    String stuPassword=null;
%>
<%
    try{

        Class.forName(DBDRIVER);
        conn=DriverManager.getConnection(DBURL,DBUSER,DBPASS);
        request.setCharacterEncoding("utf-8");
        stuId=request.getParameter("stuId");
        stuPassword=request.getParameter("stuPassword");

        String sql_update="update tb_stu set stuPassword='"+stuPassword+"' where stuId='"+stuId+"'";
        pst=conn.prepareStatement(sql_update);
        rs=pst.executeUpdate();
        if(rs!=0){
            System.out.println("修改成功");
%>
<jsp:forward page="stuManage.jsp">
    <jsp:param name="stuPassword" value="stuPassword"/>
</jsp:forward>
<%--修改之后转到个人信息管理页面--%>
<%
        }
    }
    catch(Exception e){
        System.out.println(e);
    }

%>
</body>
</html>
