import 'dart:ui';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:twitter/constants.dart';
import 'package:twitter/screen/mainPage.dart';

class SignUp extends StatefulWidget {
  // String answer;
  SignUp({Key? key,}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                      'Create your Account',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 30),
                    )),
                SizedBox(
                  height: 20,
                ),
                // Text(answer),
                Form(
                    child: Container(
                        width: 450,
                        child: TextField(
                          style: TextStyle(color: Colors.white),
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
                        ))
                        ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 450,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                        focusColor: Colors.blue,
                        border: InputBorder.none,
                        hintText: 'Phone Numbers',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    )),
                    SizedBox(height: 20,),
                    Container(
                        width: 450,
                        child: TextField(
                          style: TextStyle(color: Colors.white),
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
                Spacer(),
                GestureDetector(
                  onTap: ()=>context.go('/login'),
                  child: Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Sign up')],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 140, bottom: 20),
                    child: Row(
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          'Sign up',
                          style: TextStyle(color: Colors.blue),
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
