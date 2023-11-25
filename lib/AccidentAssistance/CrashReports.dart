import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdfinal/AccidentAssistance/AccidentChecklistOverview.dart';
import 'package:sdfinal/global.dart';
import 'package:sdfinal/NavBar.dart';

class CrashReports extends StatelessWidget {
  const CrashReports({super.key});

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
              )
          ),
        ),
        Scaffold(
          bottomNavigationBar: const NavBar(initialIndex: 2,),
          //Button to accident checklist
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AccidentChecklist()));
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
                        )
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(//container
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
                                      'John Doe',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.bold,
                                            color: contrastAccentTwo,
                                          )
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),

                                    Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                                "Date of Birth: ",
                                                textAlign: TextAlign.right,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: backgroundPrimary,
                                                    )
                                                )
                                            ),
                                          ),

                                          Expanded(
                                            child: Text(
                                                " USER DOB here ",
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                      fontSize: 20,
                                                      color: backgroundPrimary,
                                                    )
                                                )
                                            ),
                                          ),
                                        ]
                                    ),

                                    Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                                "Phone Number: ",
                                                textAlign: TextAlign.right,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: backgroundPrimary,
                                                    )
                                                )
                                            ),
                                          ),

                                          Expanded(
                                            child: Text(
                                                " USER PHONE here ",
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                      fontSize: 20,
                                                      color: backgroundPrimary,
                                                    )
                                                )
                                            ),
                                          ),
                                        ]
                                    ),

                                    Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                                "Driver's License: ",
                                                textAlign: TextAlign.right,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: backgroundPrimary,
                                                    )
                                                )
                                            ),
                                          ),

                                          Expanded(
                                            child: Text(
                                                " USER DL here ",
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                      fontSize: 20,
                                                      color: backgroundPrimary,
                                                    )
                                                )
                                            ),
                                          ),
                                        ]
                                    ),

                                    Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                                "Insurance Co: ",
                                                textAlign: TextAlign.right,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: backgroundPrimary,
                                                    )
                                                )
                                            ),
                                          ),

                                          Expanded(
                                            child: Text(
                                                " USER Ins. here ",
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                      fontSize: 20,
                                                      color: backgroundPrimary,
                                                    )
                                                )
                                            ),
                                          ),
                                        ]
                                    ),

                                    Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                                "Policy Holder: ",
                                                textAlign: TextAlign.right,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: backgroundPrimary,
                                                    )
                                                )
                                            ),
                                          ),

                                          Expanded(
                                            child: Text(
                                                " PHN NAME here ",
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                      fontSize: 20,
                                                      color: backgroundPrimary,
                                                    )
                                                )
                                            ),
                                          ),
                                        ]
                                    ),

                                    Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                                "Policy Number:",
                                                textAlign: TextAlign.right,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: backgroundPrimary,
                                                    )
                                                )
                                            ),
                                          ),

                                          Expanded(
                                            child: Text(
                                                " USER PN HERE",
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                      fontSize: 20,
                                                      color: backgroundPrimary,
                                                    )
                                                )
                                            ),
                                          ),
                                        ]
                                    ),
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
                                )
                            ),
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
                                    'Driver Name #1',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: contrastAccentOne,
                                        )
                                    ),
                                  ),
                                  Text(
                                    'Phone Number: ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: backgroundPrimary,
                                        )
                                    ),
                                  ),
                                  Text(
                                    'Vehicle Make/Model: ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: backgroundPrimary,
                                        )
                                    ),
                                  ),

                                  Text(
                                    'Color: ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: backgroundPrimary,
                                        )
                                    ),
                                  ),

                                  Text(
                                    'License Plate #: ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: backgroundPrimary,
                                        )
                                    ),
                                  ),

                                  Text(
                                    'Location: ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: backgroundPrimary,
                                        )
                                    ),
                                  ),

                                  Text(
                                    'Vehicle Make/Model: ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: backgroundPrimary,
                                        )
                                    ),
                                  ),

                                  Text(
                                    'Insurance Co.: ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: backgroundPrimary,
                                        )
                                    ),
                                  ),

                                  Text(
                                    'Policy Number: ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: backgroundPrimary,
                                        )
                                    ),
                                  ),
                                ],
                              )
                          ),
                          const SizedBox(
                            height: 30,
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
                                    'Driver Name #2',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: contrastAccentOne,
                                        )
                                    ),
                                  ),
                                  Text(
                                    'Phone Number: ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: backgroundPrimary,
                                        )
                                    ),
                                  ),
                                  Text(
                                    'Vehicle Make/Model: ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: backgroundPrimary,
                                        )
                                    ),
                                  ),

                                  Text(
                                    'Color: ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: backgroundPrimary,
                                        )
                                    ),
                                  ),

                                  Text(
                                    'License Plate #: ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: backgroundPrimary,
                                        )
                                    ),
                                  ),

                                  Text(
                                    'Location: ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: backgroundPrimary,
                                        )
                                    ),
                                  ),

                                  Text(
                                    'Vehicle Make/Model: ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: backgroundPrimary,
                                        )
                                    ),
                                  ),

                                  Text(
                                    'Insurance Co.: ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: backgroundPrimary,
                                        )
                                    ),
                                  ),

                                  Text(
                                    'Policy Number: ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: backgroundPrimary,
                                        )
                                    ),
                                  ),
                                ],
                              )
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