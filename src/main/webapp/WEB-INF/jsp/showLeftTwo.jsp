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
            overflow-x: hidden;
            overflow-y: hidden;
        }
    </style>
</head>
<body  onload="setInterval('scroll()',second)">
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div style="width: 100%;height: 100%;position: relative">
    <div <%--id="main"--%> style="width: 50%;height:130%;float: left;color: wheat">
        <h2>客户数量：</h2>
        <span id="num">12345</span>
    </div>
    <div id="picture2" style="width: 50%;height:130%;float: left;background-color: white">
        wywywyyuwywy
    </div>
</div>
<script src="<%=path%>/static/js/leftOne.js"></script>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
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