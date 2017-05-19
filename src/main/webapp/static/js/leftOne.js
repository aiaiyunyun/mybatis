// 4G用户数：趋势图
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
            fontSize: 4,
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
            data : ['周一','周二','周三','周四','周五','周六','周日']
        }
    ],

    yAxis : [
        {
            type : 'value',
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
        }
    ],
    series : [
        {
            name:'4G用户数',
            type:'line',
            stack: '总量',
            data:[120, 132, 101, 134, 90, 230, 210]
        },
        {
            name:'4G流量',
            type:'line',
            stack: '总量',
            data:[155, 36, 69, 134, 58, 230, 77],
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

// 指定图表的配置项和数据
var option2 = {
    tooltip: {
        textStyle: {
            fontSize:4
        }
    },
    legend: {
        data:['用户数量'],
        textStyle: {
            fontSize: 4,
            color: 'white'          // 主标题文字颜色
        }
    },
    xAxis: {
        data: ["1","2","3","4","5","6"]
    },
    yAxis: {

    },
    series: [{
        name: '用户数量',
        type: 'bar',
        data: [5, 20, 36, 10, 10, 20]
    }]
};
// 指定图表的配置项和数据
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
            data:[
                {value:335, name:'直接访问'},
                {value:310, name:'邮件营销'},
                {value:234, name:'联盟广告'},
                {value:135, name:'视频广告'},
                {value:1548, name:'搜索引擎'}
            ],
        }
    ]
};
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
        data:['视频下载速率'],
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
            data : ['周一','周二','周三','周四','周五','周六','周日']
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
            name:'视频下载速率',
            type:'line',
            stack: '总量',
            data:[120, 132, 101, 134, 90, 230, 210],
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
        data:['视频播放成功率'],
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
            data : ['周一','周二','周三','周四','周五','周六','周日']
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
            name:'视频播放成功率',
            type:'line',
            stack: '总量',
            data:[120, 132, 101, 134, 90, 230, 210]
        }
    ]
};
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
        data:['页面下载速率'],
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
            data : ['周一','周二','周三','周四','周五','周六','周日']
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
            name:'页面下载速率',
            type:'line',
            stack: '总量',
            data:[120, 132, 101, 134, 90, 230, 210]
        }
    ]
};
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
        data:['页面响应成功率'],
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
            data : ['周一','周二','周三','周四','周五','周六','周日']
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
            name:'页面响应成功率',
            type:'line',
            stack: '总量',
            data:[120, 132, 101, 134, 90, 230, 210]
        }
    ]
};
var option11 =  {
    tooltip : {
        textStyle: {
            fontSize:4
        },
        trigger: 'axis'
    },
    color:["#FFFF00"],
    legend: {
        data:['页面下载速率'],
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
            data : ['周一','周二','周三','周四','周五','周六','周日']
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
            name:'页面下载速率',
            type:'line',
            stack: '总量',
            data:[120, 132, 101, 134, 90, 230, 210]
        }
    ]
};
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
        data:['页面响应成功率'],
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
            data : ['周一','周二','周三','周四','周五','周六','周日']
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
            name:'页面响应成功率',
            type:'line',
            stack: '总量',
            data:[120, 132, 101, 134, 90, 230, 210]
        }
    ]
};