import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  var name;
   ScreenTwo({Key? key, this.name}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        title: Text('Screen Two'  + widget.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
               Get.toNamed( '/screenTwo', arguments:{ 'name':'Jyoti'});
              },
              child: const Text('Go Back!'),
            ),
          ],
        ),
      ),
    );
  }
}