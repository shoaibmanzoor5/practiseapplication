import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practiseapplication/bottomnavigationbar.dart';
import 'package:practiseapplication/drawerr.dart';
import 'package:practiseapplication/signup_screen.dart';

import 'color.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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

  Widget getTextField ({required String hint,required String label,required IconData icon}){
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(icon),
        hintText: hint,
        labelText: label,
      ),

    );
  }

  Widget getcontainer ({required String txt,required VoidCallback callforwed}){
    return
      Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        height: 50.h,width:double.infinity,


        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),

                  )
              )
          ),
          onPressed: callforwed,
          child: Text(txt,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: awhiteColor),),
        ),
      );}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
            backgroundColor:  Colors.blue,
            actions: <Widget>[

              Padding(
                padding: EdgeInsets.only(right: 100.w,top: 15.h),
                child: Text('ListnBy',style: TextStyle(fontSize: 23.sp,fontWeight: FontWeight.bold,color:Colors.white)
                ),
              ),
        Padding(
        padding:  EdgeInsets.only(right: 10.w),
      child: PopupMenuButton(itemBuilder: (context) => [
        PopupMenuItem(
            child: Row(
              children: [
Icon(Icons.home,color: Colors.black54,),
    Padding(
      padding:  EdgeInsets.only(left: 5.w),
      child: Text("Home"),
    ),
      ],
            )
        ),
        PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.person,color: Colors.black54,),
                Padding(
                  padding:  EdgeInsets.only(left: 5.w),
                  child: Text("Profile"),
                ),
              ],
            )
        ),
        PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.search,color: Colors.black54,),
                Padding(
                  padding:  EdgeInsets.only(left: 5.w),
                  child: Text("Search"),
                ),
              ],
            )
        ),
        PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.close,color: Colors.black54,),
                Padding(
                  padding:  EdgeInsets.only(left: 5.w),
                  child: Text("Close"),
                ),
              ],
            )
        ),

      ],
      child: Icon(Icons.more_vert,size: 28.sp,)),
    ),
    ]),
    drawer: drawerr(),
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
    /*  body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40.h,),
              bottombar()
            ],
          ),
        ),
      ),*/
      body: tabs[_crruentindex],
    );
  }
}
