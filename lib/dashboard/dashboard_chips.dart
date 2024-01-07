import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class DashboardChips extends StatefulWidget {
  const DashboardChips({super.key});

  @override
  State<DashboardChips> createState() => _DashboardChipsState();
}

class _DashboardChipsState extends State<DashboardChips> {

  final colorList = <Color>[
    Colors.greenAccent,
    Colors.grey,
    Colors.yellow,
    Colors.blue
  ];

  Map<String, double> dataMap = {
    "Flutter": 10,
    "React": 3.5,
    "Xamarin": 2,
    "Ionic": 2,
  };

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 2,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: 300,
        height: 200,
        child: PieChart(
          dataMap: dataMap,
          animationDuration: Duration(milliseconds: 800),
          chartLegendSpacing: 32,
          chartRadius: MediaQuery.of(context).size.width / 3.2,
          colorList: colorList,
          initialAngleInDegree: 0,
          chartType: ChartType.ring,
          totalValue: 15,
          ringStrokeWidth: 15,
          centerText: "HYBRID",
          legendOptions: LegendOptions(
            showLegendsInRow: false,
            legendPosition: LegendPosition.right,
            showLegends: true,
            legendShape: BoxShape.circle,
            legendTextStyle: TextStyle(
              fontWeight: FontWeight.normal,
            ),
          ),
          chartValuesOptions: ChartValuesOptions(
            showChartValueBackground: true,
            showChartValues: true,
            showChartValuesInPercentage: false,
            showChartValuesOutside: false,
            decimalPlaces: 1,
          ),
        ),
      ),
    );
  }
}
