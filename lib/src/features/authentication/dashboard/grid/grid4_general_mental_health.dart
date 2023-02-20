import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Grid4 extends StatelessWidget {
  const Grid4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(18.0),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover),
        ),
        /*Container(
        padding: const EdgeInsets.all(18.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF085078),
                Color(0xFF55d0ff),
                Color(0xFF85d8ce)
              ]), //[Color(0xFF85d8ce), Color(0xFF085078)]),
        ),*/

        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                StaggeredGrid.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 12,
                  children: [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 4,
                      mainAxisCellCount: 1.8,
                      child: InkWell(
                        onTap: () {
                          // Get.to(() => const Grid1());
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white70,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.check_box,
                                size: 30,
                                color: Colors.pink,
                              ),
                              Text("General Mental Healthy",
                                  style: Theme.of(context).textTheme.headline6),
                              const SizedBox(height: 10),
                              Container(
                                  alignment: Alignment.topCenter,
                                  margin: const EdgeInsets.all(20),
                                  child: const LinearProgressIndicator(
                                    value: 0.7,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.deepOrange),
                                    backgroundColor: Colors.grey,
                                  )),
                              /* Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: LinearPercentIndicator(
                                  width:
                                      MediaQuery.of(context).size.width - 100,
                                  animation: true,
                                  lineHeight: 10.0,
                                  animationDuration: 2000,
                                  percent: 0.9,
                                  center: const Text(
                                    "90.0%",
                                  ),
                                  linearStrokeCap: LinearStrokeCap.roundAll,
                                  trailing: const Icon(Icons.mood),
                                  backgroundColor: Colors.grey,
                                  progressColor: Colors.blue,
                                ),
                              ),*/
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
