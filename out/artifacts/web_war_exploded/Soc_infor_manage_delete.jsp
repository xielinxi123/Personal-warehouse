<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2023/1/4
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>注销社团</title>
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
    String socNumber=request.getParameter("socNumber");
%>

<%
    try{
        Class.forName(DBDRIVER);
        conn=DriverManager.getConnection(DBURL,DBUSER,DBPASS);
        String sql_delete="delete from tb_soc where socNumber="+socNumber+"";
        //获取要删除的此id的数据库信息
        pst=conn.prepareStatement(sql_delete);
        rs=pst.executeUpdate();
        if(rs!=0){
            System.out.println("删除成功");
%>
<jsp:forward page="Soc_infor_manage.jsp">
    <jsp:param name="socNumber" value="socNumber"/>
</jsp:forward>
<%
        }
    }
    catch(Exception e){
        System.out.println(e);
    }

%>
</body>
</html>
