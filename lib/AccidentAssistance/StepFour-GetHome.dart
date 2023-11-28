import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdfinal/AccidentAssistance/AccidentChecklistOverview.dart';
import 'package:sdfinal/AccidentAssistance/CrashReports.dart';
import 'package:sdfinal/global.dart';

class StepFourGetHome extends StatefulWidget {

  const StepFourGetHome({super.key});

  @override
  State<StepFourGetHome> createState() => _StepFourGetHomeState();
}

class _StepFourGetHomeState extends State<StepFourGetHome> {
  bool isRoadsideReq = false;
  bool notifyLovedOnes = false;

  Color getButtonColor() {
    if (notifyLovedOnes && isRoadsideReq) {
      return contrastAccentTwo; // Set to ContrastAccentTwo if both are true
    } else {
      return Colors.grey; // Set to grey if either or both are false
    }
  }



  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/SDBackground.png'),
              fit: BoxFit.cover,
            )
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Text(
                    'When Safe, Please Proceed Home',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: contrastAccentTwo,
                        )
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    "and prioritize your health and well being.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: bgWhite,
                        )
                    ),
                  ),
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
                  padding: const EdgeInsets.all(30),

                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: <Widget>[
                          const SizedBox(height: 20),
                          //Input Text Field Container

                          Center(
                            child: Image.asset(
                              "assets/RestRecover.png",
                              width: 200, // set the width as per your requirement
                              height: 200, // set the height as per your requirement
                            ),
                          ),

                          const SizedBox(height: 30),


                          Text(
                            'Please make sure you:',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: backgroundPrimary,
                                )
                            ),
                          ),

                          const SizedBox(height: 25,),

                          CheckboxListTile(
                            title: Text(
                              'Call your insurance provider or roadside assistance, if your vehicle is severely damaged',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 18,
                                    color: backgroundPrimary,
                                  )
                              ),
                            ),
                            activeColor: backgroundPrimary,
                            value: isRoadsideReq,
                            onChanged: (value) {
                              setState(() {
                                isRoadsideReq = value ?? false;
                              });
                            },
                          ),

                          CheckboxListTile(
                            title: Text(
                              'Notify friends, family or loved ones if you need help getting back safely',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 18,
                                    color: backgroundPrimary,
                                  )
                              ),
                            ),
                            activeColor: backgroundPrimary,
                            value: notifyLovedOnes,
                            onChanged: (value) {
                              setState(() {
                                notifyLovedOnes = value ?? false;
                              });
                            },
                          ),

                          const SizedBox(height: 25,),

                          Center(
                            child: Container(
                              height: 100.0, // Set the desired fixed height
                              padding: const EdgeInsets.all(20.0),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  if (notifyLovedOnes && isRoadsideReq) {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CrashReports()));
                                  }                                },
                                icon: const Icon(
                                  Icons.spa,
                                  color: bgWhite,
                                ),
                                label: Text(
                                  'FINISH',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: bgWhite,
                                    ),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: getButtonColor(),
                                  foregroundColor: backgroundAccentTwo,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                ),
                              ),
                            ),
                          ),
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