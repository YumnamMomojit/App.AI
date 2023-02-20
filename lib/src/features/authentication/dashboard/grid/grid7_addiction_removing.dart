import '../../../../constants/sizes.dart';
import 'package:flutter/material.dart';

class Grid7 extends StatefulWidget {
  const Grid7({Key? key}) : super(key: key);

  @override
  State<Grid7> createState() => _Grid7State();
}

class _Grid7State extends State<Grid7> {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDashboardPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Addiction Removing', style: txtTheme.headline3),
          ],
        ),
      ),
    );
  }
}
