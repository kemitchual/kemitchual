import 'package:flutter/material.dart';
import 'package:twitter/constants.dart';
import 'package:twitter/helperWIdgets/sideo.dart';
import 'package:twitter/helperWIdgets/sideoptions.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    bool sharon;
    if (screenSize.width > 800) {
      sharon = true;
    } else {
      sharon = false;
    }
    return Scaffold(
        body: Row(children: [
      sharon ? Container(
              decoration: BoxDecoration(color: Colors.black, border: Border()),
              width: screenSize.width / 3.84,
              height: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 145, bottom: 20, top: 10),
                    child: Image.network(
                      logoUrl,
                      scale: 35,
                      color: Colors.white,
                    ),
                  ),
                  Sides(title: "Home", iconData: Icons.home),
                  Sides(title: "Explore", iconData: Icons.tag),
                  Sides(title: 'Notifications', iconData: Icons.notifications),
                  Sides(title: "Messages", iconData: Icons.message),
                  Sides(
                    title: "Bookmar",
                    iconData: Icons.book_outlined,
                  ),
                  Sides(title: 'Profiles', iconData: Icons.person),
                  Sides(title: 'More', iconData: Icons.more_horiz_sharp),
                  Spacer(),
                  // Container(height: double.infinity,width: 1,color: Colors.grey,),
                   Container(
                      margin: EdgeInsets.only(
                          left: screenSize.width / 10.24,
                          bottom: 250,
                          right: screenSize.width / 51),
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.blue,
                        ),
                        child: Center(
                            child: Text(
                          'Tweet',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ],
              ),
            ): Container(),
      Container(
        decoration: BoxDecoration(

        color: Colors.black,
          // borderRadius: 
          border: Border.all(color: Colors.grey),
        ),
        height: MediaQuery.of(context).size.height,

        width: screenSize.width / 2.56,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    Spacer(),
                    Icon(
                      Icons.star_border,
                      color: Colors.white,
                    ),
                  ],
                )),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: CircleAvatar(
                      maxRadius: 30,
                      child: Icon(
                        Icons.person,
                        color: Colors.blueGrey,
                        size: 25,
                      ),
                      backgroundColor: Colors.grey,
                    )),
                Container(
                  padding: EdgeInsets.only(
                      left: screenSize.width / 30,
                      right: screenSize.width / 30),
                  height: 50,
                  width: screenSize.width / 3.84,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 30),
                        filled: true,
                        hintText: "What's happening ?",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 2))),
                  ),
                ),
              ],
            ),
            Padding(
                padding:
                EdgeInsets.only(left: screenSize.width / 4.388, top: 20),
                child: Container(
                  margin: EdgeInsetsGeometry.lerp(
                      EdgeInsets.zero, EdgeInsets.zero, 100),
                  height: 50,
                  width: screenSize.width / 15.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color.fromARGB(255, 149, 201, 244),
                  ),
                  child: Center(
                      child: Text(
                    'Tweet',
                    style: TextStyle(color: Colors.white),
                  )),
                )),
            Padding(
                padding: EdgeInsets.only(left: 0, right: 0, top: 20),
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey,
                )),
            Center(heightFactor: 10, child: CircularProgressIndicator())
          ],
        )),
      ),
      Expanded(
          child: Container(
        height: double.infinity,
        color: Colors.black,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(0)),
              width: 400,
              child: TextField(
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  focusColor: Colors.blue,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    border: InputBorder.none,
                    fillColor: Color.fromARGB(255, 43, 44, 45),
                    filled: true,
                    hintText: "Search Twitter",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 2))),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  height: 700,
                  width: screenSize.width / 3.84,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 43, 44, 45),
                  ),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              right: screenSize.width / 6.144, top: 20),
                          child: Text(
                            'Trends for you',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: screenSize.width / 76.8,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          )),
                      Center(
                        child: CircularProgressIndicator(),
                        heightFactor: 10,
                      )
                    ],
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  height: 100,
                  width: screenSize.width / 3.84,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 43, 44, 45),
                  ),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 250, top: 20),
                          child: Text(
                            'Who to follow?',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ))
                    ],
                  ),
                ))
          ],
        )),
      )),
    ]));
  }
}
