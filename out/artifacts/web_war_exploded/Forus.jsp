<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>联系开发者</title>
    <link href="./css/Forus.css" rel="stylesheet" type="text/css" />
    <link rel="icon" href="./img/avatar.jpg" sizes="32x32"/>
</head>

<body>
    <!-- 返回主页图标 -->
    <div style="float: left;padding-top: -5px;">
        <a href="./index.jsp">
            <img src="./img/Forus1.png" style="float: left; width: 50px; height: 50px;">
        </a>
    </div>
    <div style="padding-left: 6%;padding-top: 0.01px;">
    <h1>联系我们</h1>
    <p>如果您的问题急需解决，请第一时间联系我们：</p>
    <p>邮箱:2054977416@qq.com:&nbsp;&nbsp;&nbsp;&nbsp;联系电话:19522523347。</p>
    </div>

    <div class="container">
        <div style="text-align:left;padding-left: 53%;">
            <h2>请填写您的基本信息:</h2>
            <p>便于我们为您解决问题(大概3-5个工作日)</p>
        </div>
        <div class="row">
            <div class="column">
                <div id="allmap"
                    style="width:100%;height:500px;background-image: url(./img/LOGO.PNG);background-repeat: no-repeat;background-size: 100%;">
                </div>
            </div>
            <div class="column">
                <form action="ForusDo.jsp">
                    <label for="name">姓名</label>
                    <input type="text" id="fname" name="fname" placeholder="您的称呼..">
                    <label for="phone">联系电话</label>
                    <input type="text" id="phone" name="phone" placeholder="联系电话..">
                    <label for="country">您所在的地区</label>
                    <div class="info">
                        <div>
                            <select id="s_province" name="s_province"></select>
                            <select id="s_city" name="s_city"></select>
                            <select id="s_county" name="s_county"></select>
                            <script class="resources library" src="./js/area.js" text/javascript"></script>
                            <script type="text/javascript">_init_area();</script>
                        </div>
                        <div id="show"></div>
                    </div>
                    <label for="subject">留言</label>
                    <textarea id="subject" name="subject" placeholder="写入一些信息.." style="height:170px"></textarea>
                    <input type="submit" value="提交">
                </form>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        var Gid = document.getElementById;
        var showArea = function () {
            Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" +
                Gid('s_city').value + " - 县/区" +
                Gid('s_county').value + "</h3>"
        }
        Gid('s_county').setAttribute('onchange', 'showArea()');

    </script>
</body>

</html>