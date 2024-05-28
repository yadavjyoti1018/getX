import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/screen_two.dart';

class ScreenOne extends StatefulWidget {
  
  const ScreenOne({
    Key? key,
   
  }):super(key:key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        title: Text('Screen One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
              //  Get.to( ScreenTwo(name: 'Jyoti'));
              Get.toNamed( '/screenTwo', arguments:{ 'name':'Jyoti'});
              },
              child: const Text('Go To Screen Two !'),
            ),
          ],
        ),
      ),
    );
  }
}