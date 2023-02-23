<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2023/1/5
  Time: 0:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>学生个人信息修改</title>
</head>
<body>
<%!
    public static final String DBDRIVER="com.mysql.cj.jdbc.Driver";
    public static final String DBURL="jdbc:mysql://localhost:3306/web_keshe?serverTimezone=UTC&useSSL=false&useUnicode=true/useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&useSSL=true";
    public static final String DBUSER="root";
    public static final String DBPASS="";
%>
<%
    Connection conn = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    String stuId = null;
%>

<%
    try {
        Class.forName(DBDRIVER);
        conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
        request.setCharacterEncoding("utf-8");
        stuId = request.getParameter("stuId");
        String sql_update = "select * from tb_stu where stuId='" +stuId+ "'";
        //获取你要更新数据的id的数据库信息
        pst = conn.prepareStatement(sql_update);
        rs = pst.executeQuery();
        if (rs.next()) {
%>
<form action="stuUpdateDo.jsp?stuId=<%=rs.getString("stuId")%>" method="post">
    <%--切换到Teacher_Manage_updataDo.jsp,显示要更新的数据信息--%>
    &nbsp;密码： <br/><input type="text" value="<%=rs.getString("stuPassword") %>" name="stuPassword"><br/>
    <input type="submit" value="修改">&nbsp;&nbsp;&nbsp;&nbsp;
    <button><a href="stuManage.jsp">取消</a></button>
    <br/>
    <br/>
        <div style="font-size: 10px;color: red">注：修改后的密码将会在下次登陆时在个人信息管理页展示，请牢记您修改的密码</div>
</form>
<%
        }
    } catch (Exception e) {
        System.out.println(e);
    }
%>
</body>
</html>
