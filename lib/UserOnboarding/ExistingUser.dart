//Login Screens
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sdfinal/UserOnboarding/NewUser.dart';
import 'package:sdfinal/global.dart';
import '../Home.dart';

class ExLoginPage extends StatelessWidget {
  TextEditingController userName = new TextEditingController();
  TextEditingController passWord = new TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              backgroundPrimary,
              Colors.blue.shade900,
              Colors.blue.shade800,
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 100,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(height: 10,),
                  Text("Welcome Back. Please sign in with your credentials.", style: TextStyle(color: Colors.white, fontSize: 18),),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),

                child: Padding(
                  padding: EdgeInsets.all(20),

                  child: SingleChildScrollView(
                    child: Column(
                        children: <Widget>[
                          SizedBox(height: 60,),
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: bgWhite,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(
                                    color: Color.fromRGBO(225, 95, 27, 0.3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10)
                                )]
                            ),

                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: userName,
                                    decoration: InputDecoration(
                                        hintText: "Email Address",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),


                                //Username and password text input
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: passWord,
                                    decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 40,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => NewUserPage()));
                            },
                            child: Text("Don't have an account? Sign up here.", style: TextStyle(color: backgroundPrimary),),
                          ),
                          SizedBox(height: 40,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => HomePage()));
                            },

                            child: Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 50),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: contrastAccentOne,
                              ),

                              child: Center(
                                  child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      )
                                  )
                              ),
                            ),
                          )
                        ]
                    ),
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}