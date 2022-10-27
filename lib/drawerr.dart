import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class drawerr extends StatefulWidget {
  const drawerr({Key? key}) : super(key: key);

  @override
  State<drawerr> createState() => _drawerState();
}

class _drawerState extends State<drawerr> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(

            color: Colors.blue,
            height:200.h,
            width: 400.w,
          child:Column(
            children: [


          Container(
            margin:  EdgeInsets.only(top: 50.h,right: 160.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                image:DecorationImage(
                  image: AssetImage('images/shoaib.jpg')
                ) ,
                color: Colors.blue,
                border: Border(
                  left: BorderSide(
                    color: Colors.green,
                    width: 3,
                  ),
                ),
              ),
            height: 80.h,
            width: 90.w,
          ),
              Padding(
                padding:  EdgeInsets.only(right: 165.w,top: 20.h),
                child: Container(child:  Text("Shoaib Manzoor",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold,color:Colors.white))),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 90.w,top: 5.h),
                child: Container(child:  Text("ShoaibManzoor@gmail.com",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold,color:Colors.white))),
              ),
    ])),
    SizedBox(height: 5.h,),
    Container(
      color: Colors.white,
      height: 433.h,
      width: 300.w,
      child:  ListView(
        padding:  EdgeInsets.all(0.0),
        children: <Widget>[
      ListTile(
      title:  Text("Home",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,)),
      trailing:  Icon(Icons.home),
        onTap: () => {},
      ),
          Divider(),
          ListTile(
            title:  Text("Profile"),
            trailing:  Icon(Icons.person),
            onTap: () => {},
          ),
          Divider(),
          ListTile(
            title:  Text("Tab Layout"),
            trailing:  Icon(Icons.person),
            onTap: () => {},
          ),
          Divider(),
          ListTile(
            title:  Text("Comman View Demo"),
            trailing:  Icon(Icons.person),
            onTap: () => {},
          ),
          Divider(),
          ListTile(
            title:  Text("Close"),
            trailing:  Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),




    )],
      ),
    );
  }
}
