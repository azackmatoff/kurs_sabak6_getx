import 'dart:developer';

import 'package:get/get.dart';
import 'package:kurs_sabak6_getx/app_enums/enums.dart';
import 'package:kurs_sabak6_getx/repositories/calculation_repo.dart';

class HomeController extends GetxController {
  static final HomeController findHomeCont = Get.find<HomeController>();

  Rx<Gender> gender = Gender.UNKNOWN.obs;
  Rx<WeightOrAge> weightOrAge = WeightOrAge.UNKNOWN.obs;

  RxDouble height = 0.0.obs;
  RxInt weigth = 1.obs;
  RxInt age = 1.obs;

  RxInt count = 1.obs;

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  void _init() {
    log('_init');
    height.value = 120;
    weigth.value = 45;
    age.value = 16;
  }

  @override
  void onClose() {
    super.onClose();
  }

  void decrement(WeightOrAge chosenType) {
    log('decrement');
    if (chosenType == WeightOrAge.WEIGHT) {
      weigth.value--;
    } else {
      age.value--;
    }

    count.value++;
  }

  void increment(WeightOrAge chosenType) {
    log('increment');
    if (chosenType == WeightOrAge.WEIGHT) {
      weigth.value++;
    } else {
      age.value++;
    }

    count.value++;
  }

  void onSliderChange(double val) {
    log('onSliderChange');
    height.value = val;
  }

  void chooseGender(Gender val) {
    log('chooseGender');
    gender.value = val;
  }

  void calculateBmi(double height, double width) {
    calculationRepo.calculateBMI(height, width);
  }
}
