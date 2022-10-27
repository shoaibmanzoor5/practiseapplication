

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practiseapplication/signin_screen.dart';

import 'color.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);
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

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100.h,),
              Text("SignUp",style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold,color: atextblueColor),),
              SizedBox(height: 30.h,),
              getTextField(icon: (Icons.person), label: 'Name', hint: 'Enter your name'),
              SizedBox(height: 10.h,),
              getTextField(icon: (Icons.email_outlined), label: 'Email', hint: 'Enter your email'),
              SizedBox(height: 10.h,),
              getTextField(icon: (Icons.lock), label: 'Password', hint: 'Enter your passwprd'),
              SizedBox(height: 40.h,),
              getcontainer(txt: 'SignUp', callforwed: () {
              /*  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  signin()),
              );*/ }, ),
              SizedBox(height: 20.h,),
              getcontainer(txt: 'SignIn', callforwed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  signin()));
              }, ),

            ],
          ),
        ),
      ),
    );
  }
}
