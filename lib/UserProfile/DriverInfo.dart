import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdfinal/UserProfile/InsuranceInfo.dart';
import 'package:sdfinal/global.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DriverInfoPage extends StatefulWidget {
  const DriverInfoPage({super.key});

  @override
  State<DriverInfoPage> createState() => _DriverInfoPageState();
}

class _DriverInfoPageState extends State<DriverInfoPage> {
  TextEditingController dateOfBirth = TextEditingController();

  TextEditingController phoneNumber = TextEditingController();

  TextEditingController driversLicense = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future<void> driveInfoUpload() async {
      FirebaseAuth auth = FirebaseAuth.instance;
      FirebaseFirestore.instance
          .collection('Users')
          .doc(auth.currentUser?.uid)
          .update({
        'Date of Birth': dateOfBirth.text,
        'Phone Number': phoneNumber.text,
        'Driver License': driversLicense.text,
      });
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/SDBackground.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'About You',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: bgWhite,
                    )),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Simply enter the fields for easy access in the future.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 18,
                      color: bgWhite,
                    )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(height: 25),
                            //Input Text Field Container

                            Text(
                              'Date of Birth',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: backgroundPrimary,
                              )),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: bgWhite,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: backgroundAccentOne,
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child: TextField(
                                      controller: dateOfBirth,
                                      decoration: InputDecoration(
                                        hintText: "Ex: MM/DD/YYYY",
                                        hintStyle: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Phone Number',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: backgroundPrimary,
                              )),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: bgWhite,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: backgroundAccentOne,
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child: TextField(
                                      controller: phoneNumber,
                                      decoration: InputDecoration(
                                        hintText: "Ex: (123)-456-7890",
                                        hintStyle: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Driver's License (DL)",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: backgroundPrimary,
                              )),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: bgWhite,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: backgroundAccentOne,
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child: TextField(
                                      controller: driversLicense,
                                      decoration: InputDecoration(
                                        hintText: "Ex: 11224075",
                                        hintStyle: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(
                              height: 25,
                            ),

                            GestureDetector(
                              onTap: () {
                                driveInfoUpload();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            InsuranceInfoPage()));
                              },
                              child: Center(
                                child: Container(
                                  height: 53,
                                  width: 320,
                                  decoration: BoxDecoration(
                                      color: contrastAccentOne,
                                      borderRadius: BorderRadius.circular(30),
                                      border:
                                          Border.all(color: contrastAccentOne),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: backgroundAccentOne,
                                            blurRadius: 20,
                                            offset: Offset(0, 10))
                                      ]),
                                  child: Center(
                                    child: Text(
                                      '> NEXT >',
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: bgWhite,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ]),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
