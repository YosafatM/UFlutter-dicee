import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dado.dart';
import 'controller.dart';

class Principal extends StatelessWidget {
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: [
              Dado(controller.left),
              Dado(controller.right),
            ],
          ),
        ),
      ),
    );
  }
}
