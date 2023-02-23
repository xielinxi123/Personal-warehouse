<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.SimpleTimeZone" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.xxxx.entity.Student" %>

<%--
  Created by IntelliJ IDEA.
  User: 谢林希
  Date: 2023/1/2
  Time: 0:24
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding ("UTF-8");%>

<html>
<head>
    <meta charset="UTF-8">
    <title>学生个人信息</title>
    <meta name="theme-color" content="#ffc91d"/>
    <link rel="icon" href="./img/avatar.jpg" sizes="32x32"/>
    <link rel="icon" href="./img/192.png" sizes="192x192"/>
    <link href="./css/kico.css" rel="stylesheet" type="text/css"/>
    <link href="./css/paul.css" rel="stylesheet" type="text/css"/>
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1"/>
</head>
<body>
<aside class="sidebar">
    <div class="avatar">
        <img src="./img/avatar.jpg" title="Societies Center"/>
    </div>
    <nav class="nav">
        <a href="#info">个人信息管理</a>
        <a href="#skills">个人社团管理</a>
        <a href="#works">个人活动管理</a>
        <a href="#story">学生经历管理</a>
        <a href="#team">我的社团</a>
    </nav>
</aside>
<main>
    <section id="info">
        <div class="wrap">
            <h2 class="title">个人信息管理</h2>
            <div class="row">
                <div class="col-l-4">
                    <p>帐号：${student.stuId}</p>
                    <p>姓名：${student.stuName}</p>
                    <p id="stuPassword" name="stuPassword">密码：${student.stuPassword}</p>
                    <p>邮箱：${student.stuEmail}</p>
                    <p>电话：${student.stuPhone}</p>
                </div>
                <div class="col-l-4">
                    <p>生日：<fmt:formatDate value="${student.stuBirthDay}" pattern="yyyy-MM-dd"/></p>

                </div>
                <div class="col-l-4">
                    <button><a href="stuUpdate.jsp?stuId=${student.stuId}">修改密码</a></button><br/><br/>
                    <button><a>注销帐号</a></button>
                </div>
            </div>
        </div>
    </section>
    <section id="skills">
        <div class="wrap">
            <h2 class="title">参加的社团</h2>
            <div class="row scrollable">
                <div class="col-s-6 col-m-4 center-fixed">
                    <div class="skills-icon">
                        <i class="	fa fa-microphone"></i>
                    </div>
                    <div class="skills-title">
                        <h3>相声社</h3>
                        <p>第二相声社是由西安建筑科技大学在校大学生组织成立的艺术类学生社团组织，主要进行相声及曲艺文化的传承与宣传。</p>
                    </div>
                </div>
                <div class="col-s-6 col-m-4 center-fixed">
                    <div class="skills-icon">
                        <i class="fa fa-child"></i>
                    </div>
                    <div class="skills-title">
                        <h3>街舞社</h3>
                        <p>这是属于充满活力的舞者们的小聚落，以舞会友是我们独特的交流方式。</p>
                    </div>
                </div>
                <div class="col-s-6 col-m-4 center-fixed">
                    <div class="skills-icon">
                        <i class="fa fa-dribbble"></i>
                    </div>
                    <div class="skills-title">
                        <h3>篮球社</h3>
                        <p>社团以推动校园篮球文化建设、提高学生课余活动时间、丰富学校文化活动为宗旨，致力于开展各类与篮球相关的活动赛事。</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="works">
        <div class="wrap">
            <h2 class="title">我参与的活动</h2>
            <div class="row">
                <div class="col-s-6">
                    <div class="works-item">
                        <img src="./img/works/gywh.jpg"/>
                        <p>管理学院2020年元旦晚会</p>
                    </div>
                </div>
                <div class="col-s-6">
                    <div class="works-item">
                        <img src="./img/works/scss.jpg"/>
                        <p>三创赛省赛</p>
                    </div>
                </div>
                <div class="col-s-6">
                    <div class="works-item">
                        <img src="./img/works/xxs2020.jpg"/>
                        <p>相声社2020年封箱演出</p>
                    </div>
                </div>
                <div class="col-s-6">
                    <div class="works-item">
                        <img src="./img/works/xxs&xn.jpg"/>
                        <p>相声社 & 熊宁爱心社义演活动</p>
                    </div>
                </div>
                <div class="col-s-6">
                    <div class="works-item">
                        <img src="./img/works/txy.jpg"/>
                        <p>天禧苑大学生专场演出</p>
                    </div>
                </div>
                <div class="col-s-6">
                    <div class="works-item">
                        <img src="./img/works/news.jpg"/>
                        <p>2022年迎新生活动</p>
                    </div>
                </div>
                <div class="col-s-6">
                    <div class="works-item">
                        <img src="./img/works/ky1.jpg"/>
                        <p>管理学院抗疫志愿活动</p>
                    </div>
                </div>
                <div class="col-s-6">
                    <div class="works-item">
                        <img src="./img/works/ky2.jpg"/>
                        <p>西建大校级抗疫志愿活动</p>
                    </div>
                </div>
<%--                <div class="col-s-6">--%>
<%--                    <div class="works-item">--%>
<%--                        <img src="./img/works/binkic-2018.jpg"/>--%>
<%--                        <p>缤奇团队 2018 官网</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </div>
        </div>
    </section>
    <section id="story">
        <div class="wrap">
            <h2 class="title">获奖与工作经历</h2>
            <div class="row">
                <div class="col-m-8">
                    <ul class="timeline">
                        <li>2022年全国大学生“互联网+”创新创业大赛省级银奖</li>
                        <li>2022年RCEP商业精英挑战赛国贸赛道国家级一等奖</li>
                        <li>2022年计算机设计大赛省级一等奖</li>
                        <li>第十二届“全国大学生创新、创意及创业大赛”省级一等奖</li>
                        <li>第十二届“全国大学生创新、创意及创业大赛”最佳创意奖</li>
                        <li>2022年“东方财富杯”大学生金融挑战赛省级二等奖</li>
                        <li>2022年NCDA数字艺术设计大赛省级三等奖</li>
                        <li>2022年大学生数学建模竞赛校级一等奖</li>
                        <li>第十二届CRA市场调查大赛校级一等奖</li>
                        <li>第十一届“全国大学生创新、创意及创业大赛”校级一等奖</li>
                        <li>2021年全国大学生企业模拟竞争大赛校级二等奖</li>
                        <li>2022年商业精英挑战赛品牌策划赛道校级二等奖</li>
                        <li>2021年“商业精英挑战赛”双创赛道校级二等奖</li>
                        <li>2021年“粉体杯”创新创业大赛铜奖（两项）</li>
                        <li>获软件著作权一项，普通话二乙级证书，省级SSRT项目一项</li>
                        <li>2020-2022学年任度管科类2005班文艺委员、信管2002班文艺委员及科技委员</li>
                        <li>2020-2021学年度任管理学院文艺部部员</li>
                        <li>2021-2022学年度任西安建筑科技大学第二相声社社长</li>
                        <li>2021-2022学年度任西安建筑科技大学校史讲解队队员</li>
                        <li>2021-2022学年度任文都考研教育建大分校区校园大使</li>
                        <li>2022年11月15日-2023年2月14日任慧科讯业产品运营实习生</li>
                    </ul>
                </div>
                <div class="col-m-4 center-fixed">
                    <img src="./img/story.png"/>
                </div>
            </div>
        </div>
    </section>
    <section class="content-d" id="team">
        <div class="wrap">
            <h2 class="title">my societies</h2>
            <div class="row">
                <div class="col-m-6">
                    <p>对不起，您还没有加入任何一个社团</p>
                    <p><button><a>现在加入</a></button></p>
                </div>
                <div class="col-m-6 center">
                    <img src="./img/my_socecies.png"/>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <p>© 2018 By <a href="" title="保罗的博客" target="_blank">谢林希</a>.</p>
    </footer>
</main>

<script src="./js/kico.js"></script>
<script src="./js/paul.js"></script>

</body>
</html>
