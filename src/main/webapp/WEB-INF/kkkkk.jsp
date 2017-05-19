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
  <link rel="stylesheet" type="text/css" href="<%=path%>/static/bootstrap-4.0.0-alpha.6-dist/css/bootstrap.css"/>
  <link rel="stylesheet" type="text/css" href="<%=path%>/static/bootstrap-4.0.0-alpha.6-dist/css/bootstrap-grid.css"/>
  <link rel="stylesheet" type="text/css" href="<%=path%>/static/bootstrap-4.0.0-alpha.6-dist/css/bootstrap-reboot.css"/>
  <script src="<%=path%>/static/bootstrap-4.0.0-alpha.6-dist/js/bootstrap.js"></script>
  <script src="<%=path%>/static/bootstrap-4.0.0-alpha.6-dist/js/bootstrap.min.js"></script>
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
<div id="wrapper" style="margin: 0 auto;position: relative">
  <div style="text-align: center;height: 100%;width: 100%">
    <h2>——${name}4G流量实时分析——</h2>
  </div>

  <%--//这是左侧--%>
  <div style="width: 31%;height:100%;float: left;" id="leftfont">
    <div  style="overflow: hidden;margin-bottom: 0px">
      <div style="width: 100%;height: 58%;position: relative">
        <span style="font-size: 1.5em;">4G实时用户数：</span>
        <span id="my1" style="font-size: 2em;color: white">0</span>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-size: 1.5em;">4G实时流量：</span>
        <span id="my2" style="font-size: 2em;color: white">0</span>
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
        <div id="left3" style="width: 49%;height:200%;float: left;background-color: white">
        </div>
      </div>
    </div>
  </div>
  <%--//这是中间--%>
  <div style="width: 34%;float: left;height: 650px;margin-right: -1px;" class ="div1">
    <%--<button id="btn1"  style="">用户</button><button id="btn2" style="">4G流量</button>--%>
    <iframe class="J_iframe" name="iframe0" width="105%" height="100%" src="<%=path%>/showMiddle" frameborder="0" data-id="<%=path%>/index/saleput" seamless></iframe>
  </div>
  <%--//这是右侧--%>
  <div style="width: 31%;float: left;margin-left: 2em">

    <div class ="div1"  style="overflow: hidden;border:2px solid;border-color: #222222;" >
      <span style="font-size: 1.5em;">系统时间：</span><label id="show">显示时间的位置</label>
      <div style="width: 100%;height: 100%;position: relative;">
        <div id="right6" style="width: 50%;height:200%;float: left;background-color: white;margin-left: 1px">
        </div>
        <div id="right1" style="width: 49%;height:200%;float: left;background-color: white">
        </div>
      </div>
    </div>
    <div class ="div1"  style="overflow: hidden;" >
      <div style="width: 100%;height: 100%;position: relative">
        <div id="right2" style="width: 50%;height:200%;float: left;background-color: white;margin-left: 1px">
        </div>
        <div id="right5" style="width: 49%;height:200%;float: left;background-color: white">
        </div>
      </div>
    </div>
    <div class ="div1"  style="overflow: hidden;" >
      <div style="width: 100%;height: 100%;position: relative">
        <div id="right4" style="width: 50%;height:200%;float: left;background-color: white;margin-left: 1px">
        </div>
        <div id="right3" style="width: 49%;height:200%;float: left;background-color: white;">
        </div>
      </div>
    </div>
  </div>
</div>

<script src="<%=path%>/static/js/echarts.min.js"></script>
<script src="<%=path%>/static/js/leftOne.js"></script>
<script src="<%=path%>/static/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var leftChart1 = echarts.init(document.getElementById('left1'));
    // 使用刚指定的配置项和数据显示图表。
    var  week;
    $.ajax({
        url:"<%=path%>/findweek",
        cache:false,
        async: false,
        success: function(data){
            week=data;
        }
    })

    //    ['周一','周二','周三','周四','周五','周六','周日']
    //option1的日期数据
    var weekday=[];//时间
    var Op1Num=[];//4g总人数
    var Op1liu=[];//4g流量总数
    var Op12dakai=[];//网页打开优良率
    var Op12shoupingi=[];//网页首屏优良率
    var Op12xiazai=[];//视频下载优良率
    var Op12kadun=[];//视频卡顿频率优良率
    var Op12tongxun=[];//即时通信消息发送成功率
    var Op12youxi=[];//游戏交互时延优良率

    for(var i=0;i<week.length;i++){
        weekday[i]=week[i].time;
        Op1Num[i]=week[i].sumUsers;
        Op1liu[i]=week[i].protocolFlow;
        Op12dakai[i]=week[i].pageOpenRate
        Op12shoupingi[i]=week[i].pageRate
        Op12xiazai[i]=week[i].vedioDownRate
        Op12kadun[i]=week[i].vedioStopRate
        Op12tongxun[i]=week[i].messageRate
        Op12youxi[i]=week[i].gameRate
    }
    var cakeliu=[];//饼图数据流量
    var  cakerenshu=[];//饼图数据人数

    $.ajax({
        url:"<%=path%>/findcake",
        cache:false,
        async: false,
        success: function(data){
            //流量饼图处理数据
            for(var y=0;data.length;y++) {
                var ob1 = new Object();
                ob1['value']=data[y].num;
                ob1['name']=data[y].protocolType;
                cakeliu[y]=ob1;
                var ob2 = new Object();
                ob2['value']=data[y].flow;
                ob2['name']=data[y].protocolType;
                cakerenshu[y]=ob2;
            }
        }
    });

    var zhu = [];
    var  name1 =[];
    $.ajax({
        url:"<%=path%>/findzhu",
        cache:false,
        async: false,
        success: function(data){


            for(var i=0;i<data[0].length;i++){
                zhu.push(data[0][i].flow);
            }
            for(var m=0 ;m<data[1].length;m++){
                name1.push(data[1][m])
            }
        }
    });
    var option1 = {
        tooltip : {
            trigger: 'axis',
            textStyle: {
                color: '#fff',
                fontSize:4
            }
        },
        color:["#00FF00","#FFFF00"],
        legend: {
            orient: 'horizontal',
            data:['4G用户数','4G流量'],
            textStyle: {
                fontSize: 15,
                color: '#fff'          // 主标题文字颜色
            }
        },
        grid:{
            backgroundColor:'#fff',
            borderColor:'#fff'
        },

        toolbox: {
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        xAxis : [
            {
                type : 'category',
                boundaryGap : false,
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                },
                textStyle: {
                    fontSize:4
                },
                data : weekday
            }
        ],

        yAxis : [
            {
                type : 'value',
                name: '4G用户数',
                position: 'left',
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                }
            },
            {
                type : 'value',
                name: '4G流量',
                min: 0,
                max: 10000,
                position: 'right',
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
//                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                }
            }
        ],
        series : [
            {
                name:'4G用户数',
                type:'line',
                stack: '总量',
                data:Op1Num
            },
            {
                name:'4G流量',
                type:'line',
                stack: '总量',
                yAxisIndex: 1,
                data:Op1liu,
                itemStyle : {
                    normal : {
                        lineStyle:{
                            color:'#FFFF00'
                        }
                    }
                }

            }
        ]
    };

    leftChart1.setOption(option1);
    // 基于准备好的dom，初始化echarts实例
    var leftChart2 = echarts.init(document.getElementById('left2'));
    // 使用刚指定的配置项和数据显示图表。
    var option5 =  {
        title : {
            text: 'Top小区流量展示',
            x:'center',
            textStyle: {
                fontSize: 4,
                color: 'white'          // 主标题文字颜色
            }
        },
        tooltip : {
            trigger: 'axis'
        },
        toolbox: {
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar']},
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        xAxis : [
            {
                type : 'category',
                axisLabel: {
                    rotate: 60,
                    show: true,
                    textStyle: {
                        color: '#fff',
                        fontSize:1 // 让字体变大
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                },
                data : name1
            }
        ],
        yAxis : [
            {
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                },
                type : 'value'
            }
        ],
        series : [
            {
                name:'流量',
                type:'bar',
                data:zhu,
                markPoint : {
                    data : [
                        {type : 'max', name: '最大值'},
                        {type : 'min', name: '最小值'}
                    ]
                },
                markLine : {
                    data : [
                        {type : 'average', name: '平均值'}
                    ]
                }
            }
        ]
    };
    leftChart2.setOption(option5);
    // 基于准备好的dom，初始化echarts实例
    var leftChart3 = echarts.init(document.getElementById('left3'));
    // 使用刚指定的配置项和数据显示图表。
    leftChart3.setOption(option3);
    // 基于准备好的dom，初始化echarts实例
    var leftChart4 = echarts.init(document.getElementById('left4'));
    // 使用刚指定的配置项和数据显示图表。
    // 指定图表的配置项和数据
    var option4 = {
        title : {
            text: '4G业务类型流量占比',
            x:'center',
            textStyle: {
                fontSize: 4,
                color: 'white'          // 主标题文字颜色
            }
        },
        tooltip : {
            trigger: 'item',
            textStyle: {
                fontSize:4
            },
            formatter: "{a} <br/><br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'horizontal',
            x: 'center',
            textStyle: {
                color:'white',
                fontSize:4
            },
            top: '100px;'
            // x : 'left',
            // data:['直接访问','邮件营销','联盟广告','视频广告','搜索引擎']
        },
        toolbox: {
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {
                    show: true,
                    type: ['pie', 'funnel'],
                    option: {
                        funnel: {
                            x: '25%',
                            width: '50%',
                            funnelAlign: 'left',
                            max: 1548
                        }
                    }
                },
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        series : [
            {
                name:'访问来源',
                type:'pie',
                radius : '55%',
                center: ['50%', '60%'],
                itemStyle : {
                    normal : {
                        label : {
                            show : true,
                            textStyle: {
                                fontSize: 4,
                                color: 'white'          // 主标题文字颜色
                            }
                        },
                        labelLine : {
                            show : true
                        }
                    },
                    emphasis : {
                        label : {
                            show : true,
                            position : 'center',
                            textStyle : {
                                fontSize : '2',
                                fontWeight : 'bold'
                            }
                        }
                    }
                },
                data:cakeliu
            }
        ]
    };

    leftChart4.setOption(option4);
    var leftChart5 = echarts.init(document.getElementById('left5'));
    // 使用刚指定的配置项和数据显示图表。
    var option6 = {
        title : {
            text: '4G业务类型数量占比',
            x:'center',
            textStyle: {
                fontSize: 4,
                color: 'white'          // 主标题文字颜色
            }
        },
        tooltip : {
            trigger: 'item',
            textStyle: {
                fontSize:4
            },
            formatter: "{a} <br/><br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'horizontal',
            x: 'center',
            textStyle: {
                color:'white',
                fontSize:4
            },
            top: '100px;'
            // x : 'left',
            // data:['直接访问','邮件营销','联盟广告','视频广告','搜索引擎']
        },
        toolbox: {
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {
                    show: true,
                    type: ['pie', 'funnel'],
                    option: {
                        funnel: {
                            x: '25%',
                            width: '50%',
                            funnelAlign: 'left',
                            max: 1548
                        }
                    }
                },
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        series : [
            {
                name:'访问来源',
                type:'pie',
                radius : '55%',
                center: ['50%', '60%'],
                itemStyle : {
                    normal : {
                        label : {
                            show : true,
                            textStyle: {
                                fontSize: 4,
                                color: 'white'          // 主标题文字颜色
                            }
                        },
                        lineStyle:{
                            color:'#FFFF00'
                        },
                        labelLine : {
                            show : true
                        }
                    },
                    emphasis : {
                        label : {
                            show : true,
                            position : 'center',
                            textStyle : {
                                fontSize : '2',
                                fontWeight : 'bold'
                            }
                        }
                    }
                },
                data:cakerenshu,
            }
        ]
    };
    leftChart5.setOption(option6);


    // 基于准备好的dom，初始化echarts实例
    var rightChart1 = echarts.init(document.getElementById('right1'));
    // 使用刚指定的配置项和数据显示图表。
    // 指定图表的配置项和数据
    var option7 =  {
        tooltip : {
            trigger: 'axis',
            textStyle: {
                fontSize:4
            }
        },
        color:["#FFFF00"],
        legend: {
            data:['游戏交互时延优良率'],
            textStyle: {
                fontSize: 4,
                color: 'white'          // 主标题文字颜色
            }
        },
        toolbox: {
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        xAxis : [
            {
                type : 'category',
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                },
                boundaryGap : false,
                data : weekday
            }
        ],
        yAxis : [
            {
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                },
                type : 'value'
            }
        ],
        series : [
            {
                name:'游戏交互时延优良率',
                type:'line',
                stack: '总量',
                data:Op12youxi,
                itemStyle : {
                    normal : {
                        lineStyle:{
                            color:'#FFFF00'
                        }
                    }
                }
            }
        ]
    };
    rightChart1.setOption(option7);
    // 基于准备好的dom，初始化echarts实例
    var rightChart2 = echarts.init(document.getElementById('right2'));
    // 使用刚指定的配置项和数据显示图表。
    // 指定图表的配置项和数据
    var option8 =  {
        tooltip : {
            textStyle: {
                fontSize:4
            },
            trigger: 'axis'
        },
        color:["#FFFF00"],
        legend: {
            data:['即时通信消息发送成功率'],
            textStyle: {
                fontSize: 4,
                color: 'white'          // 主标题文字颜色
            }
        },
        toolbox: {
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        xAxis : [
            {
                type : 'category',
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                },
                boundaryGap : false,
                data : weekday
            }
        ],
        yAxis : [
            {
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                },
                type : 'value'
            }
        ],
        series : [
            {
                name:'即时通信消息发送成功率',
                type:'line',
                stack: '总量',
                data:Op12tongxun
            }
        ]
    };
    rightChart2.setOption(option8);
    // 基于准备好的dom，初始化echarts实例
    var rightChart3 = echarts.init(document.getElementById('right3'));
    // 使用刚指定的配置项和数据显示图表。
    // 指定图表的配置项和数据
    var option9 =  {
        tooltip : {
            textStyle: {
                fontSize:4
            },
            trigger: 'axis'
        },
        color:["#FFFF00"],
        legend: {
            data:['视频卡顿频率优良率'],
            textStyle: {
                fontSize: 4,
                color: 'white'          // 主标题文字颜色
            }
        },
        toolbox: {
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        xAxis : [
            {
                type : 'category',
                boundaryGap : false,
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                },
                data : weekday
            }
        ],
        yAxis : [
            {
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                },
                type : 'value'
            }
        ],
        series : [
            {
                name:'视频卡顿频率优良率',
                type:'line',
                stack: '总量',
                data:Op12kadun
            }
        ]
    };
    rightChart3.setOption(option9);
    // 基于准备好的dom，初始化echarts实例
    var rightChart4 = echarts.init(document.getElementById('right4'));
    // 使用刚指定的配置项和数据显示图表。
    // 指定图表的配置项和数据
    var option10 = {
        tooltip : {
            textStyle: {
                fontSize:4
            },
            trigger: 'axis'
        },
        color:["#FFFF00"],
        legend: {
            data:['视频下载优良率'],
            textStyle: {
                fontSize: 4,
                color: 'white'          // 主标题文字颜色
            }
        },
        toolbox: {
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        xAxis : [
            {
                type : 'category',
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                },
                boundaryGap : false,
                data : weekday
            }
        ],
        yAxis : [
            {
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                },
                type : 'value'
            }
        ],
        series : [
            {
                name:'视频下载优良率',
                type:'line',
                stack: '总量',
                data:Op12xiazai
            }
        ]
    };
    rightChart4.setOption(option10);
    var rightChart5 = echarts.init(document.getElementById('right5'));
    // 使用刚指定的配置项和数据显示图表。
    var option11 =  {
        tooltip : {
            textStyle: {
                fontSize:4
            },
            trigger: 'axis'
        },
        color:["#FFFF00"],
        legend: {
            data:['网页首屏优良率'],
            textStyle: {
                fontSize: 4,
                color: 'white'          // 主标题文字颜色
            }
        },
        toolbox: {
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        xAxis : [
            {
                type : 'category',
                boundaryGap : false,
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                },
                data : weekday
            }
        ],
        yAxis : [
            {
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                },
                type : 'value'
            }
        ],
        series : [
            {
                name:'网页首屏优良率',
                type:'line',
                stack: '总量',
                data:Op12shoupingi
            }
        ]
    };
    rightChart5.setOption(option11);
    // 基于准备好的dom，初始化echarts实例
    // 指定图表的配置项和数据

    var option12 = {
        tooltip : {
            textStyle: {
                fontSize:4
            },
            trigger: 'axis'
        },
        color:["#FFFF00"],
        legend: {
            data:['网页打开优良率'],
            textStyle: {
                fontSize: 4,
                color: 'white'          // 主标题文字颜色
            }
        },
        toolbox: {
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        xAxis : [
            {
                type : 'category',
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                },
                boundaryGap : false,
                data : weekday
            }
        ],
        yAxis : [
            {
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1//这里是为了突出显示加上的，可以去掉
                    }
                },
                type : 'value'
            }
        ],
        series : [
            {
                name:'网页打开优良率',
                type:'line',
                stack: '总量',
                data:Op12dakai
            }
        ]
    };
    var rightChart6 = echarts.init(document.getElementById('right6'));
    // 使用刚指定的配置项和数据显示图表。
    rightChart6.setOption(option12);
    $(function(){
        heatmapOverlay.show();
    });
    window.onresize = function () {
        myChart.resize(); //使第一个图表适应
        myChart_pieMain.resize(); // 使第二个图表适应
    }
</script>
<script>
    $(function () {
        //在这添加方法
        getweek();
        window.setInterval(getList,1000);
        //  getList();
    })
    //获得页面4G人数和流量数据并填页面

    function getList() {
        $.post("<%=path%>/list",function (data) {
                if(data!=null){
                    $("#my1").html(data[0][0].sumUsers);
                    $("#my2").html(data[0][0].protocolFlow);
                    $("#show").html(data[1]);
                }else{
                    alert("请求失败或暂无数据")
                }
            }
        )
    }
    //获得周数据总数和平均值、

    function getweek() {
        $.post("<%=path%>/findweek",function (data) {
                if(data!=null){
                    week=data;

                }else{
                    alert("请求失败或暂无数据")
                }
            }
        )
    }
</script>
</body>
</html>
