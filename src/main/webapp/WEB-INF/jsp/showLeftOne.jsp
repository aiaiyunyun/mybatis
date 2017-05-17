<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- 引入 echarts.js -->
    <script src="<%=path%>/static/js/echarts.min.js"></script>
    <style>
        html{
            /*overflow-x: hidden;*/
            /*overflow-y: hidden;*/
        }
        body{
            height: 80%;
            width: 80%;
        }
    </style>
</head>
<body  onload="setInterval('scroll()',second)">
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div style="width: 100%;height: 100%;position: relative;margin: 10px">
    <div <%--id="main"--%> style="width: 10%;height:100%;float: left;color: wheat">
        <p style="font-size: 0.8em">4G实时<br/>用户数：</p>
        <span id="num">12345</span>
    </div>
    <div id="picture2" style="width: 70%;height:140%;float: left;background-color: white;margin-left: 2em;font-size: 12px">
    </div>
</div>
<script src="<%=path%>/static/js/leftOne.js"></script>
<script type="text/javascript">

    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('picture2'));
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option2);
</script>
<script language="JavaScript" type="text/javascript">
    var str = "这个是测试用的范例文字";
    var seq = 0;
    var second=1000*60; //间隔时间1秒钟
    function scroll() {
        msg = str.substring(0, seq+1);
        document.getElementById('num').innerHTML = msg;
        seq++;
        if (seq >= str.length) seq = 0;
    }
</script>
</body>
</html>