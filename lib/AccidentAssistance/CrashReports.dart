import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdfinal/AccidentAssistance/AccidentChecklistOverview.dart';
import 'package:sdfinal/global.dart';
import 'package:sdfinal/NavBar.dart';
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
String fullName = "";

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
      fullName = snapshot['Full Name'];
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
            initialIndex: 2,
          ),
          //Button to accident checklist
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AccidentChecklist()));
            },
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
                  Text(
                    'Driver\nAssistance',
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
                                      fullName ?? '',
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
                                        child: Text(dateOfBirth ?? '',
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
                                        child: Text(phoneNumber ?? '',
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
                                        child: Text(driversLicense ?? '',
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
                                        child: Text(insuranceCo ?? '',
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
                                        child: Text(policyHolderName ?? '',
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
                                        child: Text(policyNumber ?? '',
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
                    height: height * 0.90,
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
                            'My Accidents',
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
                              height: height * 0.35,
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
                                    otherFullName ?? '',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: contrastAccentOne,
                                    )),
                                  ),
                                  Text(
                                    'Phone Number: ${otherPhoneNumber ?? ''}',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )),
                                  ),
                                  Text(
                                    'Vehicle Make/Model: ${otherMakeModel ?? ''}',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )),
                                  ),
                                  Text(
                                    'Color: ${otherCarColor ?? ''}',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )),
                                  ),
                                  Text(
                                    'License Plate #: ${otherVehicleID ?? ''}',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )),
                                  ),
                                  Text(
                                    'Location: ${accidentLocation ?? ''}',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )),
                                  ),
                                  Text(
                                    'Insurance Co.: ${otherInsuranceCo ?? ''}',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )),
                                  ),
                                  Text(
                                    'Policy Number: ${otherPolicyNumber ?? ''}',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )),
                                  ),
                                ],
                              )),
                          const SizedBox(
                            height: 30,
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
