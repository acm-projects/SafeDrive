//Insurance information
import 'package:flutter/material.dart';
import 'package:sdfinal/global.dart';
import 'package:sdfinal/Profile.dart';

class InsuranceInfoPage extends StatelessWidget {
  TextEditingController insuranceCompany = new TextEditingController();
  TextEditingController policyHolderName = new TextEditingController();
  TextEditingController policyNumber = new TextEditingController();

  InsuranceInfoPage({super.key});

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
                  Text("Add Your Insurance", style: TextStyle(color: Colors.white, fontSize: 40),),
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
                                const Text("Insurance Provider"),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: insuranceCompany,
                                    decoration: InputDecoration(
                                        hintText: "Ex: Progressive",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),

                                Text("Policy Holder Name"),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: policyHolderName,
                                    decoration: InputDecoration(
                                        hintText: "Abis Naqvi",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),

                                Text("Policy Number"),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: policyNumber,
                                    decoration: InputDecoration(
                                        hintText: "12345678910",
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
                            "Where do I find my insurance information?",
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