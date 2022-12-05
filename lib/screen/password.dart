import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';
import 'package:twitter/constants.dart';
import 'package:twitter/screen/mainPage.dart';

class PasswordPage extends StatefulWidget {
  // String answer;
  PasswordPage({Key? key,}) : super(key: key);

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  // String answer;
  // _PasswordPageState(this.answer);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                '../lib/assets/bggs.png',
              ),
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 5),
        child: Center(
          child: Container(
            width: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Image.network(
                      logoUrl,
                      scale: 30,
                      color: Colors.white,
                    )),
                Padding(
                    padding: EdgeInsets.only(right: 15, top: 10),
                    child: Text(
                      'Enter your password',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 30),
                    )),
                SizedBox(
                  height: 20,
                ),
                Form(
                    child: Container(
                        width: 450,
                        child: TextField(
                          readOnly: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            focusColor: Colors.blue,
                            border: InputBorder.none,
                            hintText: 'Phone,email address, or usersname',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ))),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 450,
                    child: TextField(cursorColor: Colors.white,style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                        focusColor: Colors.blue,
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(right: 290),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => context.go('/home'),
                  child: Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Log in')],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
           Padding(
                    padding: EdgeInsets.only(left: 140, top: 20),
                    child: Row(
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextButton(
                        child:Text('Sign up',
                          style: TextStyle(color: Colors.blue),),
                          onPressed: ()=>context.go('/signup'),
                        )
                      ],
                    ))
              ],
            ),
            height: 650,
          ),
        ),
      ),
    ));
  }
}
