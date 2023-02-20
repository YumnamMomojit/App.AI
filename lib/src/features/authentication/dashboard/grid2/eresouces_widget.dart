import 'package:flutter/material.dart';
import '../../models/e_res_onboarding.dart';

class EResoucesonboarding extends StatelessWidget {
  const EResoucesonboarding({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.2,
          ),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.bodyText2,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                model.counterText,
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 110.0,
              ),
              Container(
                  alignment: Alignment.topCenter,
                  margin: const EdgeInsets.all(20),
                  child: const LinearProgressIndicator(
                    value: 0.7,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Colors.deepOrange),
                    backgroundColor: Colors.grey,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
