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
      background-color:#211546;
      color: red;
    }
    span{
      font-size: 12px;
    }
    .div1{
      border:0px  #311546;
      border-style:inset;

    }
    #upload-container {
      position: relative;
    // 添加自定义样式
    // TODO
    }

    #upload {
      position: absolute;
      width: 100%;
      height: 100%;
      top: 0;
      left: 0;
      opacity: 0;
    }
  </style>
</head>

<body onload="setInterval('scroll()',second)">
<div class="container" style="width: 100%;height: 768px">
  <div class="row div1" style="background-image: url('<%=path%>/static/img/jingxuan025.jpg')">
    <div class="col-md-2"><img src="<%=path%>/static/img/logo.png" alt=""></div>
    <div class="col-md-8 div1 " style="text-align: center;">
      <div>
        <span style="font-size:2em;color: yellow;text-shadow: 0 1px 1px #123;">${name}4G流量实时分析</span>
      </div>
    </div>
    <div class="col-md-2" style="text-align: right">
      <a id="upload-container" href="javascript:void(0);"><img src="<%=path%>/static/img/up_file.jpg" alt="" style="height: 60%;width: 12%;position: relative;top: 20%;">
        <input id="upload" type="file" name="file" />
      </a>
    </div>
  </div>
  <div class="row div1">
    <div class="col-md-4">
      <div class="row" >
        <div class="col-md-6 div1" style="text-align: center">
          <span style="font-size: 1em;">4G实时用户数：</span>
          <span id="my1" style="font-size: 1em;color: white"></span>
        </div>
        <div class="col-md-6 div1" style="text-align: center">
          <span style="font-size: 1em;">4G实时流量：</span>
          <span id="my2" style="font-size: 1em;color: white"></span>
        </div>
      </div>
      <div class="row div1"  style="height: 256px;background-color: #0d0d25;padding: 0em;margin-left: 1em;margin-top: 1em;border-radius:25px ;" >
        <div id="left1"  class="col-md-12 div1">
        </div>
      </div>
      <div class="row div1 " style="height: 256px;background-color: #0d0d25;padding: 0em;margin-left: 1em;margin-top: 1em;border-radius:25px ;">
        <div id="left2"  class="col-md-6 div1">
        </div>
        <div id="left3" class="col-md-6 div1">
        </div>
      </div>
      <div class="row div1" style="height: 256px;background-color: #0d0d25;padding: 0em;margin-left: 1em;margin-top: 1em;border-radius:25px ;">
        <div id="left4"  class="col-md-6 div1">
        </div>
        <div id="left5"  class="col-md-6 div1">
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="row div1">
        <div class="col-md-6" style="text-align: right">
          <button  style="background-color: #311546;color: lightgrey;width: 100%;border-style: none"  id="bun1" >4G用户</button>
        </div>
        <div class="col-md-6" >
          <button  style="background-color: #311546;color: lightgrey;width: 100%;border-style: none"  id="bun2">4G流量</button>
        </div>
      </div>
      <div class="row div1" style="background-color: #0d0d25;padding: 0em;margin-left: 1em;margin-right: 1em;margin-top: 1em;border-radius:25px ;">
        <iframe class="J_iframe" name="iframe0" width="200%" height="800px" src="<%=path%>/showMiddle" frameborder="0" data-id="<%=path%>/index/saleput" seamless></iframe>
      </div>
    </div>
    <div class="col-md-4" style="height:1.5em;">
      <div class="row div1">
        <div class="col-md-12 div1" style="text-align: right">
          <span style="font-size: 1em;">系统时间：</span><span id="show" style="font-size: 1em;color: white"></span>
        </div>
      </div>
      <div class="row div1" style="height: 256px;background-color: #0d0d25;padding: 0em;margin-right: 1em;margin-top: 1em;border-radius:25px ;">
        <div class="col-md-6 div1" id="right1"></div>
        <div class="col-md-6 div1" id="right2"></div>
      </div>
      <div class="row div1"style="height: 256px;background-color: #0d0d25;padding: 0em;margin-right: 1em;margin-top: 1em;border-radius:25px ;">
        <div class="col-md-6 div1" id="right3"></div>
        <div class="col-md-6 div1" id="right4"></div>
      </div>
      <div class="row div1" style="height: 256px;background-color: #0d0d25;padding: 0em;margin-right: 1em;margin-top: 1em;border-radius:25px ;">
        <div class="col-md-6 div1" id="right5"></div>
        <div class="col-md-6 div1" id="right6"></div>
      </div>
    </div>
  </div>
</div>
<script src="<%=path%>/static/js/echarts.min.js"></script>
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
                smooth: true,
                stack: '总量',
                data:Op1Num
            },
            {
                name:'4G流量',
                type:'line',
                smooth: true,
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
            },
        ]
    };

    leftChart1.setOption(option1);
    window.onresize = leftChart1.resize;
    // 基于准备好的dom，初始化echarts实例
    var leftChart2 = echarts.init(document.getElementById('left2'));
    // 使用刚指定的配置项和数据显示图表。
    var option5 =  {
        color: ['#3398DB'],
        tooltip : {
            trigger: 'axis',
            axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis : [
            {
                type : 'category',
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff',
                        fontSize:1 // 让字体变大
                    }
                },
                data : name1/*['one', 'two', 'thr', 'fou', 'fiv', 'six', 'sev']*/,
                axisTick: {
                    alignWithLabel: true
                }

            }
        ],
        yAxis : [
            {
                type : 'value',
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff',
                        fontSize:1 // 让字体变大
                    }
                },
            }
        ],
        series : [
            {
                name:'流量总和',
                type:'bar',
                barWidth: '60%',
                data:zhu,
                //设置柱体颜色
                itemStyle:{
                    normal:{color:'green'}
                }
            }
        ]
    };/*{
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
    };*/
    leftChart2.setOption(option5);
    window.onresize = leftChart2.resize;
    // 基于准备好的dom，初始化echarts实例
    var leftChart3 = echarts.init(document.getElementById('left3'));
    // 使用刚指定的配置项和数据显示图表。
    var option3 = {
        title : {
            text: '某站点用户访问来源',
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
                data:[
                    {value:335, name:'直接访问'},
                    {value:310, name:'邮件营销'},
                    {value:234, name:'联盟广告'},
                    {value:135, name:'视频广告'},
                    {value:1548, name:'搜索引擎'}
                ]
            }
        ]
    };
    leftChart3.setOption(option3);
    window.onresize = leftChart3.resize;
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
        color:[ 'yellow','green','red','blueviolet'],
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
    window.onresize = leftChart4.resize;
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
    window.onresize = leftChart5.resize;

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
                smooth: true,
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
    window.onresize = rightChart1.resize;
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
                smooth: true,
                stack: '总量',
                data:Op12tongxun
            }
        ]
    };
    rightChart2.setOption(option8);
    window.onresize = rightChart2.resize;
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
                smooth: true,
                stack: '总量',
                data:Op12kadun
            }
        ]
    };
    rightChart3.setOption(option9);
    window.onresize = rightChart3.resize;
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
                smooth: true,
                stack: '总量',
                data:Op12xiazai
            }
        ]
    };
    rightChart4.setOption(option10);
    window.onresize = rightChart4.resize;
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
                smooth: true,
                stack: '总量',
                data:Op12shoupingi
            }
        ]
    };
    rightChart5.setOption(option11);
    window.onresize = rightChart5.resize;
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
                smooth: true,
                stack: '总量',
                data:Op12dakai
            }
        ]
    };
    var rightChart6 = echarts.init(document.getElementById('right6'));
    // 使用刚指定的配置项和数据显示图表。
    rightChart6.setOption(option12);
    window.onresize = rightChart6.resize;
    $(function(){
        heatmapOverlay.show();
    });
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
