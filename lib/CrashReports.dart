import 'package:flutter/material.dart';
import 'package:sdfinal/Profile.dart';
import './global.dart';
import 'NavBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

String otherFullName = "";
String dob = "";
String otherPhoneNumber = "";
String otherDriversLicense = "";
String otherInsuranceCo = "";
String policyHolder = "";
String otherPolicyNumber = "";
String otherMakeModel = "";
String licensePlate = "";
String otherVehicleID = "";
String accidentLocation = "";
String otherCarColor = "";
String dateOfBirth = "";
String phoneNumber = "";
String driversLicense = "";
String insuranceCo = "";
String policyNumber = "";
String policyHolderName = "";

class CrashReports extends StatefulWidget {
  const CrashReports({super.key});

  @override
  State<CrashReports> createState() => _CrashReportsState();
}

class _CrashReportsState extends State<CrashReports> {
  void initState() {
    super.initState();
    getInsuranceData();
  }

  void getInsuranceData() async {
    DocumentSnapshot snapshot = await FirebaseFirestore.instance
        .collection('Users')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .get();
    setState(() {
      otherFullName = snapshot['Driver Full Name'];
      otherPhoneNumber = snapshot['Driver Phone Number'];
      otherDriversLicense = snapshot['Driver DL'];
      otherInsuranceCo = snapshot['Driver Insurance Company'];
      otherCarColor = snapshot['Driver Vehicle Color'];
      otherPolicyNumber = snapshot['Driver Policy Number'];
      otherMakeModel = snapshot['Driver Vehicle Make and Model'];
      otherVehicleID = snapshot['Driver Vehicle License Plate Number'];
      accidentLocation = snapshot['Accident Location'];
      dateOfBirth = snapshot['Date of Birth'];
      phoneNumber = snapshot['Phone Number'];
      driversLicense = snapshot['Driver License'];
      insuranceCo = snapshot['Insurance Company'];
      policyNumber = snapshot['Policy Number'];
      policyHolderName = snapshot['Policyholder Name'];
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            backgroundPrimary,
            Colors.blue.shade900,
            Colors.blue.shade800,
          ])),
        ),
        Scaffold(
          bottomNavigationBar: const NavBar(
            initialIndex: 0,
          ),
          //Button to add vehicle
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: contrastAccentOne,
            splashColor: contrastAccentTwo,
            child: const Icon(Icons.warning),
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Help\nCenter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontFamily: 'Nisebuschgardens',
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  SizedBox(
                    //container
                    height: height * 0.5,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double innerHeight = constraints.maxHeight;
                        double innerWidth = constraints.maxWidth;
                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: innerHeight * 0.75,
                                width: innerWidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: backgroundAccentTwo,
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 80,
                                    ),
                                    Text(
                                      fullName ?? "",
                                      style: const TextStyle(
                                        color: contrastAccentTwo,
                                        fontSize: 36,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(children: <Widget>[
                                      Expanded(
                                        child: Text("Date of Birth: ",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: backgroundPrimary,
                                                fontSize: 18)),
                                      ),
                                      Expanded(
                                        child: Text(dateOfBirth ?? "",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: backgroundPrimary,
                                                fontSize: 18)),
                                      ),
                                    ]),
                                    Row(children: <Widget>[
                                      Expanded(
                                        child: Text("Phone Number: ",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: backgroundPrimary,
                                                fontSize: 18)),
                                      ),
                                      Expanded(
                                        child: Text(phoneNumber ?? "",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: backgroundPrimary,
                                                fontSize: 18)),
                                      ),
                                    ]),
                                    Row(children: <Widget>[
                                      Expanded(
                                        child: Text("DL: ",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: backgroundPrimary,
                                                fontSize: 18)),
                                      ),
                                      Expanded(
                                        child: Text(driversLicense ?? "",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: backgroundPrimary,
                                                fontSize: 18)),
                                      ),
                                    ]),
                                    Row(children: <Widget>[
                                      Expanded(
                                        child: Text("Insurance Company: ",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: backgroundPrimary,
                                                fontSize: 18)),
                                      ),
                                      Expanded(
                                        child: Text(insuranceCo ?? "",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: backgroundPrimary,
                                                fontSize: 18)),
                                      ),
                                    ]),
                                    Row(children: <Widget>[
                                      Expanded(
                                        child: Text("Policy Holder: ",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: backgroundPrimary,
                                                fontSize: 18)),
                                      ),
                                      Expanded(
                                        child: Text(policyHolderName ?? "",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: backgroundPrimary,
                                                fontSize: 18)),
                                      ),
                                    ]),
                                    Row(children: <Widget>[
                                      Expanded(
                                        child: Text("Policy Number: ",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: backgroundPrimary,
                                                fontSize: 18)),
                                      ),
                                      Expanded(
                                        child: Text(policyNumber ?? "",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: backgroundPrimary,
                                                fontSize: 18)),
                                      ),
                                    ])
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Image.asset(
                                  userProfile,
                                  width: innerWidth * 0.45,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: height * 0.5,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: bgWhite,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'My Accidents',
                            style: TextStyle(
                              color: backgroundPrimary,
                              fontSize: 27,
                            ),
                          ),
                          const Divider(
                            thickness: 2.5,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
