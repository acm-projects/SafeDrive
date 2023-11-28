import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdfinal/UserProfile/VehicleInfo.dart';
import './global.dart';
import 'NavBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

String fullName = "";
String dob = "";
String phoneNumber = "";
String driversLicense = "";
String insuranceCo = "";
String policyHolder = "";
String policyNumber = "";
String makeModel = "";
String licensePlate = "";
String vehicleID = "";

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    DocumentSnapshot snapshot = await FirebaseFirestore.instance
        .collection('Users')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .get();
    setState(() {
      fullName = snapshot['Full Name'];
      dob = snapshot['Date of Birth'];
      phoneNumber = snapshot['Phone Number'];
      driversLicense = snapshot['Driver License'];
      insuranceCo = snapshot['Insurance Company'];
      policyHolder = snapshot['Policyholder Name'];
      policyNumber = snapshot['Policy Number'];
      makeModel = snapshot['Vehicle Make & Model'];
      licensePlate = snapshot['Vehicle License Plate Number'];
      vehicleID = snapshot['Vehicle Identification Number'];
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
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/SDBackground.png'),
            fit: BoxFit.cover,
          )),
        ),
        Scaffold(
          bottomNavigationBar: const NavBar(
            initialIndex: 3,
          ),
          //Button to add vehicle
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VehicleInfoPage()));
            },
            backgroundColor: contrastAccentOne,
            splashColor: contrastAccentTwo,
            child: const Icon(Icons.add),
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
                  Text(
                    'My\nProfile',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: bgWhite,
                    )),
                  ),
                  const SizedBox(
                    height: 20,
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
                                      height: 60,
                                    ),
                                    Text(
                                      fullName ?? "",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold,
                                        color: contrastAccentTwo,
                                      )),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(children: <Widget>[
                                      Expanded(
                                        child: Text("Date of Birth: ",
                                            textAlign: TextAlign.right,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: backgroundPrimary,
                                            ))),
                                      ),
                                      Expanded(
                                        child: Text(dob ?? "",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 20,
                                              color: backgroundPrimary,
                                            ))),
                                      ),
                                    ]),
                                    Row(children: <Widget>[
                                      Expanded(
                                        child: Text("Phone Number: ",
                                            textAlign: TextAlign.right,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: backgroundPrimary,
                                            ))),
                                      ),
                                      Expanded(
                                        child: Text(phoneNumber ?? "",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 20,
                                              color: backgroundPrimary,
                                            ))),
                                      ),
                                    ]),
                                    Row(children: <Widget>[
                                      Expanded(
                                        child: Text("Driver's License: ",
                                            textAlign: TextAlign.right,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: backgroundPrimary,
                                            ))),
                                      ),
                                      Expanded(
                                        child: Text(driversLicense ?? "",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 20,
                                              color: backgroundPrimary,
                                            ))),
                                      ),
                                    ]),
                                    Row(children: <Widget>[
                                      Expanded(
                                        child: Text("Insurance Co: ",
                                            textAlign: TextAlign.right,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: backgroundPrimary,
                                            ))),
                                      ),
                                      Expanded(
                                        child: Text(insuranceCo ?? "",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 20,
                                              color: backgroundPrimary,
                                            ))),
                                      ),
                                    ]),
                                    Row(children: <Widget>[
                                      Expanded(
                                        child: Text("Policy Holder: ",
                                            textAlign: TextAlign.right,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: backgroundPrimary,
                                            ))),
                                      ),
                                      Expanded(
                                        child: Text(policyHolder ?? "",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 20,
                                              color: backgroundPrimary,
                                            ))),
                                      ),
                                    ]),
                                    Row(children: <Widget>[
                                      Expanded(
                                        child: Text("Policy Number:",
                                            textAlign: TextAlign.right,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: backgroundPrimary,
                                            ))),
                                      ),
                                      Expanded(
                                        child: Text(policyNumber ?? "",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 20,
                                              color: backgroundPrimary,
                                            ))),
                                      ),
                                    ]),
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
                    height: height * 0.55,
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
                          Text(
                            'My Vehicles',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: backgroundPrimary,
                            )),
                          ),
                          const Divider(
                            thickness: 2.5,
                            color: backgroundPrimary,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: height * 0.15,
                              width: width * 0.80,
                              decoration: BoxDecoration(
                                color: backgroundAccentOne,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    makeModel ?? "",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: contrastAccentOne,
                                    )),
                                  ),
                                  Text(
                                    licensePlate ?? "",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 20,
                                      color: backgroundPrimary,
                                    )),
                                  ),
                                  Text(
                                    vehicleID ?? "",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 20,
                                      color: backgroundPrimary,
                                    )),
                                  ),
                                ],
                              )),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: height * 0.15,
                              width: width * 0.80,
                              decoration: BoxDecoration(
                                color: backgroundAccentOne,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Vehicle Make & Model #2',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: contrastAccentOne,
                                    )),
                                  ),
                                  Text(
                                    'License Plate Number',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 20,
                                      color: backgroundPrimary,
                                    )),
                                  ),
                                  Text(
                                    'Vehicle Identification #',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 20,
                                      color: backgroundPrimary,
                                    )),
                                  ),
                                ],
                              )),
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
