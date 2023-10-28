import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;
  @override
  void initState() {
    data = [
      _ChartData('Fruits', 34),
      _ChartData('Veggies', 21),
      _ChartData('Masalas', 13),
      _ChartData('Meat', 6),
      _ChartData('Milky', 9)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(height: 30,),
            Text('Monthly Sale',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
            Container(
              height: 300,
              child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
                  tooltipBehavior: _tooltip,
                  series: <ChartSeries<_ChartData, String>>[
                    ColumnSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        name: 'Sale',
                        color: Colors.indigo)
                  ]),
            ),
          ],
        )
    );
  }
}
class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
