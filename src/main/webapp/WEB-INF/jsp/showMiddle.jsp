<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- 引入 echarts.js -->
    <script src="<%=path%>/static/js/echarts.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
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
<%--<script src="<%=path%>/static/js/map.js"></script>--%>
<script src="<%=path%>/static/js/echarts.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=glPyYQsTkNN6GaZRwAQKZMTR00eMi7ih"></script>
<script type="text/javascript">
    var arr1=[];
    var array = [];
    $(function () {
        getList();

    })
    function getList() {
        $.ajax({
            url:"/mlist",
            cache:false,
            async: false,
            success: function(data){
                for (var m = 0; m < data.length; m++) {
                    var obj = new Object();
                    obj["lng"] = data[m].longitude;
                    obj["lat"] = data[m].latitude;
                    obj["count"] = data[m].sumUsers;
                    arr1[m] = obj;
                    console.log(arr1)
                }
            }
        })
    }
    <c:forEach items="${list}" var="lsit">
    var obj = {};
    obj['Longitude'] = '${lsit.longitude}';
    obj['Latitude'] = '${lsit.latitude}';
    obj['Azimuth'] = '${lsit.azimuth}';
    array.push(obj)
    </c:forEach>
    // 百度地图API功能
    var map = new BMap.Map("container");          // 创建地图实例
    var point = new BMap.Point(118.167163,39.603419);
    map.centerAndZoom(point, 13);             // 初始化地图，设置中心点坐标和地图级别
    map.enableScrollWheelZoom(); // 允许滚轮缩放
    var  mapStyle ={
        features: ["road", "building","water","land"],//隐藏地图上的poi
//        style : "dark"  //设置地图风格为高端黑
        style : "googlelite"  //设置地图风格为高端黑
    };
    for(var i=0;i<array.length;i++){
        var obj = array[i];
        //alert(obj.Longitude+"==============="+obj.Latitude+"==============="+obj.Azimuth);
        sanjiao(parseFloat(obj.Longitude),parseFloat(obj.Latitude),parseInt(obj.Azimuth));
    }
    map.setMapStyle(mapStyle);
    var points = [{"lng":118.175498	,"lat":39.589363,"count":76},
        {"lng":118.15999	,"lat":39.60693,"count":24},
        {"lng":118.15999	,"lat":39.60693,"count":25},
        {"lng":118.15999	,"lat":39.60693,"count":26},
        {"lng":118.12916	,"lat":39.59656,"count":100},
        {"lng":118.173199	,"lat":39.607252,"count":3},
        {"lng":118.173199	,"lat":39.607252,"count":3},
        {"lng":118.173199	,"lat":39.607252,"count":3},
        {"lng":118.173199	,"lat":39.607252,"count":4},
        {"lng":118.173199	,"lat":39.607252,"count":5},
        {"lng":118.173199	,"lat":39.607252,"count":45},
        {"lng":118.173199	,"lat":39.607252,"count":45},
        {"lng":118.173199	,"lat":39.607252,"count":56},
        {"lng":118.175498	,"lat":39.589363,"count":36},
        {"lng":118.175498	,"lat":39.589363,"count":73},
        {"lng":118.175498	,"lat":39.589363,"count":35},
        {"lng":118.167288	,"lat":39.6058,"count":44},
        {"lng":118.167288	,"lat":39.6058,"count":64},
        {"lng":118.167288	,"lat":39.6058,"count":74},
        {"lng":118.16728	,"lat":39.60579,"count":70},
        {"lng":118.148861	,"lat":39.568598,"count":36},
        {"lng":118.148861	,"lat":39.568598,"count":37},
        {"lng":118.148861	,"lat":39.568598,"count":38},
        {"lng":118.148861	,"lat":39.568598,"count":85},
        {"lng":118.166205	,"lat":39.574716,"count":67},
        {"lng":118.166205	,"lat":39.574716,"count":89},
        {"lng":118.18076	,"lat":39.58108,"count":90},
        {"lng":118.18076	,"lat":39.58108,"count":91},
        {"lng":118.18076	,"lat":39.58108,"count":92},
        {"lng":118.18076	,"lat":39.58108,"count":135},
        {"lng":118.18076	,"lat":39.58108,"count":136},
        {"lng":118.18076	,"lat":39.58108,"count":137},
        {"lng":118.161821	,"lat":39.58076,"count":72},
        {"lng":118.161821	,"lat":39.58076,"count":73},
        {"lng":118.161821	,"lat":39.58076,"count":74},
        {"lng":118.161821	,"lat":39.58076,"count":38},
        {"lng":118.161821	,"lat":39.58076,"count":38},
        {"lng":118.161821	,"lat":39.58076,"count":38},
        {"lng":118.148414	,"lat":39.602082,"count":23},
        {"lng":118.148414	,"lat":39.602082,"count":76},
        {"lng":118.148414	,"lat":39.602082,"count":86},
        {"lng":118.148414	,"lat":39.602082,"count":9},
        {"lng":118.148414	,"lat":39.602082,"count":10},
        {"lng":118.148414	,"lat":39.602082,"count":11},
        {"lng":118.17752	,"lat":39.56929,"count":45},
        {"lng":118.17752	,"lat":39.56929,"count":87},
        {"lng":118.17752	,"lat":39.56929,"count":55},
        {"lng":118.17878	,"lat":39.56918,"count":81},
        {"lng":118.17878	,"lat":39.56918,"count":81},
        {"lng":118.17878	,"lat":39.56918,"count":81}];
    if(!isSupportCanvas()){
        alert('热力图目前只支持有canvas支持的浏览器,您所使用的浏览器不能使用热力图功能~')
    }
    heatmapOverlay = new BMapLib.HeatmapOverlay({"radius":20});
    map.addOverlay(heatmapOverlay);
    heatmapOverlay.setDataSet({data:points,max:100});
    $(function(){
        heatmapOverlay.show();
    });
    //x为x坐标,y为y坐标,A为角度
    function sanjiao(x,y,A){
        var  length=0.002;//三角形边长
        var   jiao=30;//三角形顶点角的一半30代表30度
        var yuanx=x + Math.sin((2*Math.PI / 360)*(A+jiao)) * length ;
        var yuany=y + Math.cos((2*Math.PI / 360)*(A+jiao)) * length;
        var yuanx2=x + Math.sin((2*Math.PI / 360)*(A-jiao)) * length ;
        var yuany2=y + Math.cos((2*Math.PI / 360)*(A-jiao)) * length;
        var polygon = new BMap.Polygon([
            new BMap.Point(x,y),
            new BMap.Point(yuanx,yuany),
            new BMap.Point(yuanx2,yuany2),
        ], {strokeColor:"blue", strokeWeight:2, strokeOpacity:0.1,fillOpacity:0.5, fillColor: 'red'});  //创建多边形
        map.addOverlay(polygon);

    }
    function closeHeatmap(){
        heatmapOverlay.hide();
    }
    closeHeatmap();
    function setGradient(){
        var gradient = {};
        var colors = document.querySelectorAll("input[type='color']");
        colors = [].slice.call(colors,0);
        colors.forEach(function(ele){
            gradient[ele.getAttribute("data-key")] = ele.value;
        });
        heatmapOverlay.setOptions({"gradient":gradient});
    }
    //判断浏览区是否支持canvas
    function isSupportCanvas(){
        var elem = document.createElement('canvas');
        return !!(elem.getContext && elem.getContext('2d'));
    }
</script>
</body>
</html>