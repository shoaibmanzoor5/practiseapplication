

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practiseapplication/signup_screen.dart';

import 'Home_page.dart';
import 'bottomnavigationbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size (360, 640),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(

              primarySwatch: Colors.blue,
            ),
            home: homepage(),
          );
        }
    );
  }
}

