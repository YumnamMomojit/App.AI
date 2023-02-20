import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Grid5 extends StatefulWidget {
  const Grid5({Key? key}) : super(key: key);

  @override
  _Grid5State createState() => _Grid5State();
}

class _Grid5State extends State<Grid5> {
  late double value;
  @override
  void initState() {
    super.initState();
    // you just have to divide by 100
    value = 12.7 / 100;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 25),
      child: CircularPercentIndicator(
        radius: 55.0,
        lineWidth: 8.0,
        animation: true,
        percent: value,
        center: const Text(
          '12.7',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11.0),
        ),
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: Colors.green[700],
      ),
    ));
  }
}
