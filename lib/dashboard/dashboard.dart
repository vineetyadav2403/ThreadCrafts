import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:threadcarfts/dashboard/dashboard_chips.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          width: MediaQuery.of(context).size.width - 251,
          color: Colors.grey.shade200,
          // child: Wrap(
          //   alignment: WrapAlignment.spaceAround,
          //   children: [
          //     DashboardChips(),
          //     DashboardChips(),
          //     DashboardChips(),
          //     DashboardChips()
          //   ],
          //)
        ),
      ],
    );
  }
}
