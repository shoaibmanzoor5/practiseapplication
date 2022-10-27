import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class bottombar extends StatefulWidget {
  const bottombar({Key? key}) : super(key: key);

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int _crruentindex =0;
  final  tabs = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

      Container(
        height: 100.h,
        width: 100.w,
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 100),
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        color: Colors.green,
  child: Text("Home"),),

    ],
  ),
    Center(child: Text("Person"),),
    Center(child: Text("Favourite"),)

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_crruentindex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _crruentindex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white60,
        iconSize: 30.sp,
        // selectedFontSize: 15.sp,
        // unselectedFontSize:10.sp,
        items: [

          BottomNavigationBarItem(
              icon: Icon(Icons.home),
             label: "Home",
            backgroundColor: Colors.blue,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Person",
            backgroundColor: Colors.blue,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favourite",
            backgroundColor: Colors.blue,

          ),
        ],
        onTap: (index) {
          setState(() {
            _crruentindex = index;
          }
          );
        }),
    );
  }
}
