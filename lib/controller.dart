import 'dart:math';

import 'package:get/get.dart';

class Controller extends GetxController {
  var left = 1.obs;
  var right = 1.obs;

  void changeDice() {
    left.value = Random().nextInt(6) + 1;
    right.value = Random().nextInt(6) + 1;
  }
}