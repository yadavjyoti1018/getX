import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/screen_one.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to GetX',
        style:GoogleFonts.quicksand() ),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('Tile 1'),
              subtitle: Text('Subtitle 1'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Tile 1 Alert Dialog',
                  titlePadding: const EdgeInsets.all(20),
                  middleText: 'This is Tile 1',
                  contentPadding: const EdgeInsets.all(20),
                 confirm: TextButton(onPressed:(){
                  Navigator.pop(context); 
                 } , child: Text('Ok'),
                 ),
                  onConfirm: (){
                    Get.back();
                  },
                );
              },
          ),
          ),
          Card(
            child: ListTile(
              title: Text('Getx Alert Dialog'),
              subtitle: Text('Click to see GetX Alert Dialog'),
              onTap: (){
                Get.defaultDialog(
                  title: 'GetX Alert Dialog',
                  titlePadding: const EdgeInsets.all(20),
                  middleText: 'This is GetX Alert Dialog',
                  contentPadding: const EdgeInsets.all(20),
                  textConfirm: 'OK',
                  textCancel: 'Cancel',
                  onConfirm: (){
                    Get.back();
                  },
                );
              },
          ),
          ),
          Card(
            child: ListTile(
              title: Text('Getx Bottom Sheet'),
              subtitle: Text('Click to see GetX Bottom Sheet'),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    color: Colors.blue,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Light Theme'),
                        
                          onTap: (
                            
                          ){
                            Get.changeTheme(ThemeData.light());
                            Get.back();
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Theme'),
                          onTap: (){
                             Get.changeTheme(ThemeData.dark());
                            Get.back();
                          },
                        ),
                       
                      ],
                    ),
                  ),
                );
              },
          ),
          ),
            Card(
            child: ListTile(
              title: Text('Next Screen'),
              subtitle: Text('Click to go to next screen'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Go to Next Screen',
                  titlePadding: const EdgeInsets.all(20),
                  middleText: 'Next Screen',
                  contentPadding: const EdgeInsets.all(20),
                 confirm: TextButton(onPressed:(){
                  // Navigator.push(context, 
                  // MaterialPageRoute(builder:
                  //  (context)=> const ScreenOne())); 
                  Get.to(ScreenOne());
                 } , child: Text('Got to next screen'),
                 ),
                  onConfirm: (){
                    Get.back();
                  },
                );
              },
          ),
          ),
          ListTile(
            title: Text('Good Morning'.tr),
            subtitle: Text('good_morning'.tr),
          
          ),
          SizedBox(height:10),
          Row(
            children: [
              OutlinedButton(onPressed: () {
                Get.updateLocale(Locale('en', 'US'));
              }, child: Text('English')),
              SizedBox(width: 20),
              OutlinedButton(onPressed: () {
                Get.updateLocale(Locale('hi', 'IN'));
              }, child: Text('Hindi')),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar('GetX', 'Learning State Management',
        icon:  Icon(Icons.add),
        onTap: (snap){
          print('Snackbar Clicked');
        },
        backgroundColor: Colors.deepPurple,
        colorText: Colors.white,
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 3)

        );
      }),
    );
  }
}