import 'package:flutter/material.dart';
import 'package:kurs_sabak6_getx/app_constants/app_colors.dart';
import 'package:kurs_sabak6_getx/app_constants/app_text_styles.dart';
import 'package:kurs_sabak6_getx/modules/home/screens/home_screen.dart';
import 'package:kurs_sabak6_getx/repositories/calculation_repo.dart';
import 'package:kurs_sabak6_getx/widgets/circular_button.dart';

import 'package:kurs_sabak6_getx/widgets/reusable_widget.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key key, this.height, this.weight}) : super(key: key);

  final double height;
  final double weight;

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  void initState() {
    super.initState();

    calculationRepo.calculateBMI(widget.height, widget.weight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'BMI CALCULATOR',
          style: AppTextStyles.titleTextStyle,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 35.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    const Text(
                      'Your Result',
                      style: AppTextStyles.resultTitle,
                    ),
                    const SizedBox(height: 35.0),
                    ReUsableWidget(
                      bgColor: AppColors.activeIconColor,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              calculationRepo.getResult(),
                              style: AppTextStyles.resultSubTitle,
                            ),
                            Text(
                              calculationRepo.getResultNumber(),
                              style: AppTextStyles.resultNumber,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(
                                calculationRepo.getInterpretation(),
                                style: AppTextStyles.titleTextStyle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 35.0),
                  ],
                ),
              ),
            ),
            CustomButton(
              child: const Text(
                'RE-CALCULATE',
                style: AppTextStyles.buttonTextStyle,
              ),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                    (Route<dynamic> route) => false);
              },
              buttonColor: AppColors.buttonColor,
              constraints: BoxConstraints(
                minHeight: 92,
                minWidth: MediaQuery.of(context).size.width,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
