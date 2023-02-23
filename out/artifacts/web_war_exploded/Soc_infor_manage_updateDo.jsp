<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2023/1/4
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>更新社团信息（执行）</title>
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
    String socNumber=null;
    String socName=null;
    String soc_PreNumber=null;
    String soc_TeaNumber=null;
    String socMemberNumber=null;
    String socStar=null;
//    Date socMadeDate=null;
%>
<%
    try{

        Class.forName(DBDRIVER);
        conn=DriverManager.getConnection(DBURL,DBUSER,DBPASS);
        request.setCharacterEncoding("utf-8");
        socNumber=request.getParameter("socNumber");
        socName=request.getParameter("socName");
        soc_PreNumber=request.getParameter("soc_PreNumber");
        soc_TeaNumber=request.getParameter("soc_TeaNumber");
        socMemberNumber=request.getParameter("socMemberNumber");
        socStar=request.getParameter("socStar");
//        socMadeDate=request.getParameter("socMadeDate");

//        //string转Date
//        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        Date socMadeDate1 = null;
//        try {
//            socMadeDate1 = (Date) sdf1.parse(socMadeDate);
//        }catch (Exception e){
//            e.printStackTrace();
//        }

        String sql_update="update tb_soc set socNumber='"+socNumber+"',socName='"+socName+"' ,soc_PreNumber='"+soc_PreNumber+"',soc_TeaNumber='"+soc_TeaNumber+"' ,socMemberNumber='"+socMemberNumber+"' ,socStar='"+socStar+"'where socNumber='"+socNumber+"'";
        pst=conn.prepareStatement(sql_update);
        rs=pst.executeUpdate();
        if(rs!=0){
            System.out.println("更新成功");
%>
<jsp:forward page="Soc_infor_manage.jsp"></jsp:forward>
<%--修改之后转到展示页面--%>
<%
        }
    }
    catch(Exception e){
        System.out.println(e);
    }

%>
</body>
</html>
