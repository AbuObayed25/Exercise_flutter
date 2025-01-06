import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //CounterController counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: false,
      ),
      body: Center(child: GetBuilder<CounterController>(
        builder: (CounterController) {
          return Text(
            '${CounterController.counter}',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: Get.find<CounterController>().increment,
        child: Icon(Icons.add),
      ),
    );
  }
}


