import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  RxInt _counter=0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: false,
      ),
      body: Center(
        child: Obx(() {
          return Text('$_counter', style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),);
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _OnTapAddButton, child: Icon(Icons.add),),
    );
  }

  void _OnTapAddButton(){
    _counter++;
  }
}
