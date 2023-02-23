<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>社团管理系统管理员后台</title>
    <link href="./css/BM_first.css" rel="stylesheet" type="text/css" />
    <link rel="icon" href="./img/avatar.jpg" sizes="32x32"/>
</head>

<body>
<!--顶部信息区-->
<header role="header">
    <div>
        <h1>高校社团后台管理系统</h1>
        <nav role="user">
            <ul>
                <li>欢迎管理员:<strong>${user.userName}</strong></li>
                <li><a href="Password_change.jsp?userName=${user.userName}" target="main">修改信息</a></li>
                <li><a href="javascript:void(0);" onclick="logout()">退出登录</a></li>
            </ul>
        </nav>
    </div>
</header>
<!--圣杯二列布局-->
<main role="main">
    <!--主体内联框架区-->
    <article role="content">
        <iframe src="BM_welcome.jsp" name="main"></iframe>
        <footer role="copyright">
            <p><a href="#">信管2002 谢林希</a> ©版权所有</p>
        </footer>
    </article>
    <!--左侧导航区-->
    <aside>
        <nav role="option">
            <ul>
                <li><h3>·&nbsp;导航列表</h3></li>
                <li><a href="Soc_infor_manage.jsp" target="main" class="active">社团信息管理</a></li>
                <li><a href="Act_apply.jsp" target="main">活动审批</a></li>
                <li><a href="Teacher_manage.jsp" target="main">指导教师管理</a></li>
                <li><a href="Pre_infor_manage.jsp" target="main">社长管理</a></li>
                <li><a href="Com_del.jsp" target="main">社团投诉管理</a></li>
                <li><a href="SocStu_infor_manage.jsp" target="main">社团学生管理</a></li>
            </ul>
        </nav>
    </aside>
</main>

<script>
    function logout() {
        if (window.confirm('是否退出?')) {
            window.location.href = 'index.jsp';
        } else {
            return false;
        }
    }
</script>
</body>

</html>