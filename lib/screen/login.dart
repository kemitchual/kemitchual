import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:twitter/constants.dart';
import 'package:go_router/go_router.dart';
import 'password.dart';

class Login extends StatefulWidget {
  // String answer;
  Login({Key? key,}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // String answer;
  // _LoginState(this.answer);

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
                      'Sign in to Twitter',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 30),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        google,
                        scale: 40,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text('Sign in with Google')
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        apple,
                      ),
                      Text('Sign in with Apple')
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 130,
                      height: 2,
                      color: Colors.grey,
                    ),
                    Text(
                      ' or ',
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      width: 130,
                      height: 2,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Form(
                    child: Container(
                        width: 350,
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          // onChanged: ((value) => answer = value),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            focusColor: Colors.blue,
                            border: InputBorder.none,
                            hintText: 'Phone,email addresse, or usersname',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ))),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  // ignore: prefer_const_constructors
                  onTap: () =>context.go('/password'),
                  //  Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (BuildContext context) => PasswordPage())),
                  child: Container(
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Next')],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
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
