import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practiseapplication/signup_screen.dart';

import 'color.dart';

class forget extends StatelessWidget {
  const forget({Key? key}) : super(key: key);
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
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 305.w, top: 5.h),
            child: Container(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  color: Color(0xff3A456E),
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                ),
              ),
            ),
          ),

        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40.h,),
              Text("Forget",style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold,color: atextblueColor),),
              SizedBox(height: 30.h,),

              getTextField(icon: (Icons.email_outlined), label: 'Email', hint: 'Enter your email'),
              SizedBox(height: 10.h,),
              getTextField(icon: (Icons.lock), label: 'Password', hint: 'Enter your passwprd'),
              SizedBox(height: 20.h,),
              SizedBox(height: 25.h,),
              getcontainer(txt: 'Forget', callforwed: () {  }),


            ],
          ),
        ),
      ),
    );
  }
}
