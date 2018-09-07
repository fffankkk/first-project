<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8">
    <title>第一个 Highcharts 图表</title>
  <script src="/highcharts/js/jquery-3.3.1.min.js"></script>
  <script src="http://cdn.hcharts.cn/highcharts/highcharts.js"></script>
    <script type="text/javascript" src="/highcharts/js/HighChart.js"></script>
      <script type="text/javascript" src="/highcharts/js/highcharts-more.js"></script>
    <script type="text/javascript" src="/highcharts/js/exporting.js"></script>
  <script type="text/javascript">
 $(document).ready(function(){
    var title="dsds";
    alert(title);
    var strJson = [
            { name: '2013-01', group: 'olive', value: 116 },
            { name: '2013-01', group: 'momo', value: 115 },
            { name: '2013-01', group: 'only', value: 222 },
            { name: '2013-01', group: 'for', value: 324 },
            { name: '2013-02', group: 'olive', value: 156 },
            { name: '2013-02', group: 'momo', value: 185 },
            { name: '2013-02', group: 'only', value: 202 },
            { name: '2013-02', group: 'for', value: 34 },
            { name: '2013-03', group: 'olive', value: 16 },
            { name: '2013-03', group: 'momo', value: 51 },
            { name: '2013-03', group: 'only', value: 22 },
            { name: '2013-03', group: 'for', value: 84 }
            ];
    var data = [];
    for ( var i in strJson) {
        var serie = new Array(strJson[i].name, strJson[i].count);
        data.push(serie);
    }
    ColumnChart(data,title);
});
  </script>
      
  </head>
<body>
<   <!-- 图表容器 DOM -->
    <div id="container" style="width: 600px;height:400px;"></div>
    <!-- 引入 highcharts.js -->
    <script src="http://cdn.hcharts.cn/highcharts/highcharts.js"></script>
    <script>
       var chart = Highcharts.chart('container', {
    chart: {
        type: 'column'
    },
    title: {
        text: '全球各大城市人口排行'
    },
    subtitle: {
        text: '数据截止 2017-03，来源: <a href="https://en.wikipedia.org/wiki/List_of_cities_proper_by_population">Wikipedia</a>'
    },
    xAxis: {
        type: 'category',
        labels: {
            rotation: -45  // 设置轴标签旋转角度
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: '人口 (百万)'
        }
    },
    legend: {
        enabled: false
    },
    tooltip: {
        pointFormat: '人口总量: <b>{point.y:.1f} 百万</b>'
    },
    series: [{
        name: '总人口',
        data: [
            ['上海', 24.25],
            ['卡拉奇', 23.50],
            ['北京', 21.51],
            ['德里', 16.78],
            ['拉各斯', 16.06],
            ['天津', 15.20],
            ['伊斯坦布尔', 14.16],
            ['东京', 13.51],
            ['广州', 13.08],
            ['孟买', 12.44],
            ['莫斯科', 12.19],
            ['圣保罗', 12.03],
            ['深圳', 10.46],
            ['雅加达', 10.07],
            ['拉合尔', 10.05],
            ['首尔', 9.99],
            ['武汉', 9.78],
            ['金沙萨', 9.73],
            ['开罗', 9.27],
            ['墨西哥', 8.87]
        ],
        dataLabels: {
            enabled: true,
            rotation: -90,
            color: '#FFFFFF',
            align: 'right',
            format: '{point.y:.1f}', // :.1f 为保留 1 位小数
            y: 10
        }
    }]
});
    </script>
</body>
</html>
