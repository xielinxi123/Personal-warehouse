<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2023/1/4
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新建社团</title>
    <link rel="stylesheet" href="./css/tb_show.css" type="text/css">
</head>
<body>
<form action="Soc_infor_manage_newDo.jsp" method="post">
    <table border="1" align="center">
        <caption>请输入您要新建社团的信息</caption>
        <tr>
            <td>社团名称</td>
            <td style="width: 350px"><input style="width: 250px" type="text" placeholder="建议5-8个汉字，前缀加“西建大”" name="socName" id="socName"></td>
        </tr>
        <tr>
            <td>社长学号</td>
            <td style="width: 350px"><input style="width: 250px"  type="text" placeholder="请核对正确后输入，不确定请填“0”" name="soc_PreNumber" id="soc_PreNumber"></td>
        </tr>
        <tr>
            <td style="width: 120px">指导教师工号</td>
            <td style="width: 300px"><input style="width: 250px" type="text" placeholder="请核对正确后输入，不确定请填“0”" name="soc_TeaNumber" id="soc_TeaNumber"></td>
        </tr>
        <tr>
            <td>社团人数</td>
            <td style="width: 300px"><input style="width: 250px" type="text" placeholder="请核对正确后输入，不确定请填“0”" name="socMemberNumber" id="socMemberNumber"></td>
        </tr>
        <tr>
            <td>创立日期</td>
            <td style="width: 300px"><input style="width: 250px" type="date" placeholder="请核对正确后输入，不确定请填“2001-01-01”" name="socMadeDate" id="socMadeDate"></td>
        </tr>
        <tr>
            <td style="width: 80px">星级</td>
            <td style="width: 300px"><input style="width: 250px" type="text" placeholder="请核对正确后输入，不确定请填“0”" name="socStar" id="socStar"></td>
        </tr>
    </table>
    <br/>
    <div style="padding-left: 48%">
        <input type="submit" id="btn_sub" value="新建">
    </div>
</form>
</body>
</html>
