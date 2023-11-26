import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdfinal/AccidentAssistance/AccidentChecklistOverview.dart';
import 'package:sdfinal/global.dart';

class StepTwoPolice extends StatefulWidget {
  const StepTwoPolice({super.key});

  @override
  State<StepTwoPolice> createState() => _StepTwoPoliceState();
}

class _StepTwoPoliceState extends State<StepTwoPolice> {
  bool tellPolice = false;
  bool answerQuestions = false;
  bool providedInfo = false;
  bool nameBadgeReq = false;
  bool policeReportReq = false;

  Color getButtonColor() {
    if (tellPolice && answerQuestions && providedInfo && nameBadgeReq && policeReportReq) {
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
                    'When the Police Arrive',
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
                    "keep your composure and detail the incident to the best of your understanding.",
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
                                "assets/WhenPoliceArrive.png",
                                width: 200, // set the width as per your requirement
                                height: 200, // set the height as per your requirement
                              ),
                            ),

                            const SizedBox(height: 30),
                            Text(
                              'Meet the officer and:',
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
                                'Describe the series of events leading up to the accident',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )
                                ),
                              ),
                              activeColor: backgroundPrimary,
                              value: tellPolice,
                              onChanged: (value) {
                                setState(() {
                                  tellPolice = value ?? false;
                                });
                              },
                            ),

                            CheckboxListTile(
                              title: Text(
                                'Answer any follow up questions they may have',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )
                                ),
                              ),
                              activeColor: backgroundPrimary,
                              value: answerQuestions,
                              onChanged: (value) {
                                setState(() {
                                  answerQuestions = value ?? false;
                                });
                              },
                            ),

                            CheckboxListTile(
                              title: Text(
                                "Provide your driver's license and proof of vehicle registration",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )
                                ),
                              ),
                              activeColor: backgroundPrimary,
                              value: providedInfo,
                              onChanged: (value) {
                                setState(() {
                                  providedInfo = value ?? false;
                                });
                              },
                            ),

                            const SizedBox(height: 25),
                            Text(
                              'Request the following:',
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
                                "The officer's name and badge number",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )
                                ),
                              ),
                              activeColor: backgroundPrimary,
                              value: nameBadgeReq,
                              onChanged: (value) {
                                setState(() {
                                  nameBadgeReq = value ?? false;
                                });
                              },
                            ),

                            CheckboxListTile(
                              title: Text(
                                'A copy of the police report',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )
                                ),
                              ),
                              activeColor: backgroundPrimary,
                              value: policeReportReq,
                              onChanged: (value) {
                                setState(() {
                                  policeReportReq = value ?? false;
                                });
                              },
                            ),




                            Center(
                              child: Container(
                                height: 200.0, // Set the desired fixed height
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: contrastAccentTwo,
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const AccidentChecklist()));
                                        },
                                        icon: const Icon(
                                          Icons.chevron_left,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: getButtonColor(),
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          if (tellPolice && answerQuestions && providedInfo && nameBadgeReq && policeReportReq) {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => const AccidentChecklist()));
                                          }
                                        },
                                        icon: const Icon(
                                          Icons.chevron_right,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
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
