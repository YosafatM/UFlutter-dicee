import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class Dado extends StatelessWidget {
  final Controller _controller = Get.find();
  final RxInt face;

  Dado(RxInt face) : face = face;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextButton(
          onPressed: () {
            _controller.changeDice();
          },
          child: Obx(() => Image.asset('images/dice${face.value}.png')),
        ),
      ),
    );
  }
}