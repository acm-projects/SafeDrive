import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdfinal/AccidentAssistance/CrashReports.dart';
import 'package:sdfinal/AccidentAssistance/StepFour-GetHOme.dart';
import 'package:sdfinal/AccidentAssistance/StepOne-EMS.dart';
import 'package:sdfinal/AccidentAssistance/StepThree-Documentation.dart';
import 'package:sdfinal/AccidentAssistance/StepTwo-PoliceArrival.dart';
import 'package:sdfinal/global.dart';

class AccidentChecklist extends StatefulWidget {
  const AccidentChecklist({super.key});

  @override
  State<AccidentChecklist> createState() => _AccidentChecklistState();
}

class _AccidentChecklistState extends State<AccidentChecklist> {
  bool stepOneCompleted = false;
  bool stepTwoCompleted = false;
  bool stepThreeCompleted = false;
  bool stepFourCompleted = false;

  @override
  Widget build(BuildContext context) {
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
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CrashReports()));
            },
            backgroundColor: contrastAccentTwo,
            child: const Icon(Icons.chevron_left),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.startTop,

          //Button to add vehicle
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
                  Center(
                    child: Text(
                      'Accident',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.bold,
                            color: bgWhite,
                          )
                      ),
                    ),
                  ),

                  Center(
                    child: Text(
                      'Checklist',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.bold,
                            color: contrastAccentTwo,
                          )
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                      height: height * 0.15,
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: stepOneCompleted ? backgroundAccentTwo : bgWhite,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      alignment: Alignment.center,

                      child: ListTile(
                        title: Text(
                          'Stay Calm and Call 911',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: contrastAccentTwo,
                              )
                          ),
                        ),
                        subtitle: Text(
                          'Please check for injuries and alert first responders.',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: backgroundPrimary,
                              )
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios, color: contrastAccentTwo, size: 35),
                        leading: const Icon(Icons.emergency, color: contrastAccentTwo, size: 35),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) => const StepOneEMS()));
                        },
                      )
                  ),

                  Container(
                      height: height * 0.15,
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: bgWhite,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      alignment: Alignment.center,

                      child: ListTile(
                        title: Text(
                          'Wait for Police to Arrive',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: contrastAccentTwo,
                              )
                          ),
                        ),
                        subtitle: Text(
                          'Please describe the circumstances.',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: backgroundPrimary,
                              )
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios, color: contrastAccentTwo, size: 35),
                        leading: const Icon(Icons.local_police_sharp, color: contrastAccentTwo, size: 35),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const StepTwoPolice()));
                        },
                      )
                  ),

                  Container(
                      height: height * 0.15,
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: bgWhite,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      alignment: Alignment.center,

                      child: ListTile(// Adjust the vertical padding
                        title: Text(
                          'Document the Incident',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: contrastAccentTwo,
                              )
                          ),
                        ),
                        subtitle: Text(
                          'Note any vehicle or property damage.',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: backgroundPrimary,
                              )
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios, color: contrastAccentTwo, size: 35),
                        leading: const Icon(Icons.description, color: contrastAccentTwo, size: 35),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const StepThreeDocumentation()));
                        },
                      )
                  ),

                  Container(
                      height: height * 0.15,
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: bgWhite,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      alignment: Alignment.center,

                      child: ListTile(// Adjust the vertical padding
                        title: Text(
                          'When safe to do so, please proceed home',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: contrastAccentTwo,
                              )
                          ),
                        ),
                        subtitle: Text(
                          'Prioritize rest and recovery.',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: backgroundPrimary,
                              )
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios, color: contrastAccentTwo, size: 35),
                        leading: const Icon(Icons.healing_rounded, color: contrastAccentTwo, size: 35),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const StepFourGetHome()));
                        },
                      )
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

