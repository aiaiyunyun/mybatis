var arr1=[];
var array = [];
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

//console.log(array)

// 百度地图API功能
var map = new BMap.Map("container");          // 创建地图实例

var point = new BMap.Point(118.167163,39.603419);
map.centerAndZoom(point, 13);             // 初始化地图，设置中心点坐标和地图级别
map.enableScrollWheelZoom(); // 允许滚轮缩放

var  mapStyle ={
    features: ["road", "building","water","land"],//隐藏地图上的poi
    style : "googlelite"  //设置地图风格为高端黑
};

for(var i=0;i<array.length;i++){
    var obj = array[i];
    //alert(obj.Longitude+"==============="+obj.Latitude+"==============="+obj.Azimuth);
    sanjiao(parseFloat(obj.Longitude),parseFloat(obj.Latitude),parseInt(obj.Azimuth));

}
/*sanjiao(118.167163,39.603419,0);//加入三角
 sanjiao(118.167163,39.603419,90);//加入三角
 sanjiao(118.167163,39.603419,190);//加入三角*/
map.setMapStyle(mapStyle);
alert(arr1)
var points = arr1;
//    brrby;
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