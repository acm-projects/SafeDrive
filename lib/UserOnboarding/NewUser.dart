//Login Screens
import 'package:flutter/material.dart';
import 'package:sdfinal/UserProfile/VehicleInfo.dart';
import 'package:sdfinal/global.dart';

import 'ExistingUser.dart';

class NewUserPage extends StatelessWidget {
  TextEditingController fullName = new TextEditingController();
  TextEditingController emailAddress = new TextEditingController();
  TextEditingController phoneNum = new TextEditingController();
  TextEditingController dateOfBirth = new TextEditingController();
  TextEditingController driverLicense = new TextEditingController();

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
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Text("Welcome to SafeDrive", style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(height: 10,),
                  Text("Let's start with some basic credentials.", style: TextStyle(color: Colors.white, fontSize: 18),),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),

                child: Padding(
                  padding: const EdgeInsets.all(20),

                  child: SingleChildScrollView(
                    child: Column(
                        children: <Widget>[
                          const SizedBox(height: 40),
                          Container(
                            padding: const EdgeInsets.all(20),
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
                                Text("Full Name"),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: fullName,
                                    decoration: InputDecoration(
                                        hintText: "Ex: John Doe",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),

                                Text("Date of Birth"),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: dateOfBirth,
                                    decoration: InputDecoration(
                                        hintText: "MM/DD/YYYY",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),

                                Text("Phone Number"),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: phoneNum,
                                    decoration: InputDecoration(
                                        hintText: "(123)-456-7890",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),

                                Text("Email Address"),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: emailAddress,
                                    decoration: InputDecoration(
                                        hintText: "johndoe@safedrive.com",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),

                                Text("Driver's License Number"),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: driverLicense,
                                    decoration: InputDecoration(
                                        hintText: "DL: 123456789",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(height: 30,),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ExLoginPage()));
                            },
                            child: Text("Already have an account? Sign in.", style: TextStyle(color: backgroundPrimary),),
                          ),


                          SizedBox(height: 30,),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => VehicleInfoPage()));
                            },

                            child: Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 50),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: contrastAccentOne,
                              ),

                              child: Center(
                                  child: Text("SIGN UP", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
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