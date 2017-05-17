<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- 引入 echarts.js -->
    <script src="<%=path%>/static/js/echarts.min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=rR137ElWogTtA8I7MRD1eumladqqg3GO"></script>
    <script type="text/javascript" src="/static/js/heatmap.min.js"></script>
    <title>热力图功能示例</title>
    <style type="text/css">
        ul,li{list-style: none;margin:0;padding:0;float:left;}
        html{height:100%}
        body{height:100%;margin:0px;padding:0px;font-family:"微软雅黑";}
        .anchorBL{display:none;}
        #container{height:100%;width:100%;}
        #r-result{width:100%;}
    </style>
    <style>
        html{
            overflow-x: hidden;
            overflow-y: hidden;
        }
    </style>
</head>

<body onload="">
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div>
    <div id="container"></div>
</div>
<script src="<%=path%>/static/js/jquery-3.2.0.min.js"></script>
<script src="<%=path%>/static/js/map.js"></script>
<script src="<%=path%>/static/js/echarts.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=glPyYQsTkNN6GaZRwAQKZMTR00eMi7ih"></script>
<script type="text/javascript">
    // 百度地图API功能

</script>
</body>
</html>