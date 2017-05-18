<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <base href="<%=basePath%>">
  <!-- jsp文件头和头部 -->
  <%--<%@ include file="top.jsp"%>--%>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="renderer" content="webkit">
  <title>整体展示</title>
  <!--[if lt IE 9]>
  <meta http-equiv="refresh" content="0;ie.html" />

  <![endif]-->

  <style>
    .test{ position:fixed; bottom:0; left:0;width:100%;}
    html{
      min-width: 100%;
      min-height: 100%;
    }
    body{
      background-color: #212121;
      color: red;
    }
    span{
      font-size: 12px;
    }
    div{
      border:1.3px solid #212121;
      border-style:inset
      /*background:#f0fbeb*/
    }
    /*.div1{
      margin-top: 2px;
      border-style:inset;
      border-width:0px;

      !*position: fixed;*!
    }*/
  </style>
</head>

<body onload="setInterval('scroll()',second)" class="fixed-sidebar full-height-layout gray-bg">
<div id="wrapper" style="margin: 0 auto">
  <div style="text-align: center;height: 100%;width: 100%">
    <h2>——${name}4G流量实时分析——</h2>
  </div>

  <%--//这是左侧--%>
  <div style="width: 31%;height:100%;float: left;" id="leftfont">
    <div  style="overflow: hidden;margin-bottom: 0px">
      <div style="width: 100%;height: 58%;position: relative">
        <span style="font-size: 1.5em;">4G实时用户数：</span>
        <span id="num1" style="font-size: 2em;color: white">0</span>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-size: 1.5em;">4G实时流量：</span>
        <span id="num2" style="font-size: 2em;color: white">0</span>
        <div id="left1" style="width: 100%;height:200%;float: left;background-color: white;">
        </div>
      </div>
    </div>
    <div  style="overflow: hidden;">
      <div style="width: 100%;height: 100%;position: relative;">
        <div id="left2" style="width: 50%;height:200%;float: left;background-color: white">
        </div>
        <div id="left5" style="width: 49%;height:200%;float: left;background-color: white;">
        </div>

      </div>
    </div>
    <div  style="overflow: hidden" class ="div1">
      <div style="width: 100%;height: 150%;position: relative;">
        <div id="left4" style="width: 50%;height:200%;float: left;background-color: white;margin-left: 1px">
        </div>
        <div id="left3" style="width: 49%;height:200%;float: right;background-color: white">
        </div>
      </div>
    </div>
  </div>
  <%--//这是中间--%>
  <div style="width: 34%;float: left;height: 650px;margin-right: -1px;" class ="div1">
    <button id="btn1"  style="">用户</button><button id="btn2" style="">4G流量</button>
    <iframe class="J_iframe" name="iframe0" width="105%" height="100%" src="<%=path%>/showMiddle" frameborder="0" data-id="<%=path%>/index/saleput" seamless></iframe>
  </div>
  <%--//这是右侧--%>
  <div style="width: 31%;float: left;margin-left: 2em">

    <div class ="div1"  style="overflow: hidden;border:2px solid;border-color: #222222;" >
      <span style="font-size: 1.5em;">系统时间：</span><label id="show">显示时间的位置</label>
      <div style="width: 100%;height: 100%;position: relative;">
        <div id="right6" style="width: 50%;height:200%;float: left;background-color: white;margin-left: 1px">
        </div>
        <div id="right1" style="width: 49%;height:200%;float: right;background-color: white">
        </div>
      </div>
    </div>
    <div class ="div1"  style="overflow: hidden;" >
      <div style="width: 100%;height: 100%;position: relative">
        <div id="right2" style="width: 50%;height:200%;float: left;background-color: white;margin-left: 1px">
        </div>
        <div id="right5" style="width: 49%;height:200%;float: right;background-color: white">
        </div>
      </div>
    </div>
    <div class ="div1"  style="overflow: hidden;" >
      <div style="width: 100%;height: 100%;position: relative">
        <div id="right4" style="width: 50%;height:200%;float: left;background-color: white;margin-left: 1px">
        </div>
        <div id="right3" style="width: 49%;height:200%;float: right;background-color: white;">
        </div>
      </div>
    </div>
  </div>
</div>
<script src="<%=path%>/static/js/echarts.min.js"></script>
<script src="<%=path%>/static/js/leftOne.js"></script>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var leftChart1 = echarts.init(document.getElementById('left1'));
    // 使用刚指定的配置项和数据显示图表。
    leftChart1.setOption(option1);
    // 基于准备好的dom，初始化echarts实例
    var leftChart2 = echarts.init(document.getElementById('left2'));
    // 使用刚指定的配置项和数据显示图表。
    leftChart2.setOption(option5);
    // 基于准备好的dom，初始化echarts实例
    var leftChart3 = echarts.init(document.getElementById('left3'));
    // 使用刚指定的配置项和数据显示图表。
    leftChart3.setOption(option3);
    // 基于准备好的dom，初始化echarts实例
    var leftChart4 = echarts.init(document.getElementById('left4'));
    // 使用刚指定的配置项和数据显示图表。
    leftChart4.setOption(option4);
    var leftChart5 = echarts.init(document.getElementById('left5'));
    // 使用刚指定的配置项和数据显示图表。
    leftChart5.setOption(option6);


    // 基于准备好的dom，初始化echarts实例
    var rightChart1 = echarts.init(document.getElementById('right1'));
    // 使用刚指定的配置项和数据显示图表。
    rightChart1.setOption(option7);
    // 基于准备好的dom，初始化echarts实例
    var rightChart2 = echarts.init(document.getElementById('right2'));
    // 使用刚指定的配置项和数据显示图表。
    rightChart2.setOption(option8);
    // 基于准备好的dom，初始化echarts实例
    var rightChart3 = echarts.init(document.getElementById('right3'));
    // 使用刚指定的配置项和数据显示图表。
    rightChart3.setOption(option9);
    // 基于准备好的dom，初始化echarts实例
    var rightChart4 = echarts.init(document.getElementById('right4'));
    // 使用刚指定的配置项和数据显示图表。
    rightChart4.setOption(option10);
    var rightChart5 = echarts.init(document.getElementById('right5'));
    // 使用刚指定的配置项和数据显示图表。
    rightChart5.setOption(option11);
    // 基于准备好的dom，初始化echarts实例
    var rightChart6 = echarts.init(document.getElementById('right6'));
    // 使用刚指定的配置项和数据显示图表。
    rightChart6.setOption(option12);
    $(function(){
        heatmapOverlay.show();
    });
</script>
<script language="JavaScript" type="text/javascript">
    var initializationTime=(new Date()).getTime();
    var str = "123456";
    var seq = 0;
    var second=1000; //间隔时间1秒钟
    function scroll() {
//        msg = str.substring(0, seq+1);
        msg = seq;
        document.getElementById('num1').innerHTML = msg;
        document.getElementById('num2').innerHTML = msg;
        seq++;
        //        if (seq >= str.length) seq = 0;
        var now=new Date();
        var year=now.getYear()+1900;
        var month=now.getMonth();
        var day=now.getDate();
        var hours=now.getHours();
        var minutes=now.getMinutes();
        var seconds=now.getSeconds();
        document.all.show.innerHTML=""+year+"年"+month+"月"+day+"日 "+hours+":"+minutes+":"+seconds+"";
        //一秒刷新一次显示时间
        var timeID=setTimeout(showLeftTime,1000);
    }
    $.ajax({
        type:"POST",
        url:"Venue.aspx?act=init",
        dataType:"html",
        success:function(result){   //function1()

        }
    });
</script>
</body>

</html>
