<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>投诉社团</title>
    <link href="./css/Complaint.css" rel="stylesheet" type="text/css"/>
    <link rel="icon" href="./img/avatar.jpg" sizes="32x32"/>
</head>

<body>
    <!-- 返回主页图标 -->
    <div style="float: left;padding-top: -5px;padding-left: 60px;">
        <a href="index.jsp">
            <img src="./img/Complaint.png" style="float: left; width: 50px; height: 50px;">
        </a>
    </div>

    <!-- 投诉表单主体 -->
    <div class="Content-Main">
        <div class="Content-Main1">
            <h1>投诉社团</h1>
        </div>
        <form action="ComplaintDo.jsp" method="post" class="form-report">
            <label>
                <span>社团名称:</span>
                <textarea style="height: 23px;" id="societies_name" name="societies_name" placeholder="请填写社团名称"></textarea>
            </label>

            <label>
                <span>投诉原因:</span>
                <select name="select2" class="select2" id="select2">
                    <option value="涉及诈骗">涉及诈骗</option>
                    <option value="加收社费">加收社费</option>
                    <option value="违规举办活动">违规举办活动</option>
                    <option value="泄露社员信息">泄露社员信息</option>
                    <option value="其他违规行为">其他违规行为</option>
                </select>
            </label>

            <label>
                <span>问题描述:</span>
                <textarea id="describe" name="describe" placeholder="详细填写举报理由,有利于审核,不得少于8个字"></textarea>
            </label>

            <label>
                <span>投诉作证:</span>
                <textarea id="url" name="url" placeholder="请上传作证至百度网盘，将文件共享链接填在此处"></textarea>
            </label>
            
            <label>
                <span>您的联系方式:</span>
                <textarea id="email" name="email" placeholder="请务必填写正确的邮箱地址或联系电话"></textarea>
            </label>

            <label>
                <span>备注:</span>
                <input type="text" id="verifiation code">
            </label>
            <label>
                <input type="submit" class="button" value="确定">
            </label>
        </form>
    </div>
</body>

</html>