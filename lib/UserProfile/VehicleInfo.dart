//Login Screens
import 'package:flutter/material.dart';
import 'package:sdfinal/global.dart';
import 'package:sdfinal/Profile.dart';

class VehicleInfoPage extends StatelessWidget {
  TextEditingController vehicleMakeModel = new TextEditingController();
  TextEditingController vehicleLicensePlate = new TextEditingController();
  TextEditingController vehicleIdentification = new TextEditingController();

  VehicleInfoPage({super.key});

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
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Text("Add a Vehicle", style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(height: 10,),
                  Text("to your profile.", style: TextStyle(color: Colors.white, fontSize: 18),),
                ],
              ),
            ),
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
                          SizedBox(height: 40),
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
                                const Text("Vehicle Make & Model"),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: vehicleMakeModel,
                                    decoration: InputDecoration(
                                        hintText: "Ex: Honda Civic SI",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),

                                Text("License Plate Number"),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: vehicleLicensePlate,
                                    decoration: InputDecoration(
                                        hintText: "ACM2023",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),

                                Text("Vehicle Identification Number (VIN)"),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: vehicleIdentification,
                                    decoration: InputDecoration(
                                        hintText: "2HGES15822H926033",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30,),



                          Text(
                            "Where do I find my VIN?",
                            style: TextStyle(
                                color: backgroundPrimary
                            ),
                          ),
                          SizedBox(height: 30,),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ProfilePage()));
                            },

                            child: Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 50),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: contrastAccentOne,
                              ),

                              child: Center(
                                  child: Text("PROCEED", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
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