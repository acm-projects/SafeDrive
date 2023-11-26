import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdfinal/AccidentAssistance/AccidentChecklistOverview.dart';
import 'package:sdfinal/global.dart';

class StepOneEMS extends StatefulWidget {

  const StepOneEMS({super.key});

  @override
  State<StepOneEMS> createState() => _StepOneEMSState();
}

class _StepOneEMSState extends State<StepOneEMS> {
  bool isLocationChecked = false;
  bool isInjuriesChecked = false;

  Color getButtonColor() {
    if (isInjuriesChecked && isLocationChecked) {
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
                    'Stay Calm and Call 911',
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
                    "to alert EMS of the accident. The calmer you remain, the better for all parties involved.",
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
                                "assets/CallEMS.png",
                                width: 200, // set the width as per your requirement
                                height: 200, // set the height as per your requirement
                              ),
                            ),

                            const SizedBox(height: 30),


                            Text(
                              'Check and inform the dispatcher of:',
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
                                'The location of the accident',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )
                                ),
                              ),
                              activeColor: backgroundPrimary,
                              value: isLocationChecked,
                              onChanged: (value) {
                                setState(() {
                                  isLocationChecked = value ?? false;
                                });
                              },
                            ),

                            CheckboxListTile(
                              title: Text(
                                'Any injuries at the scene of the accident',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )
                                ),
                              ),
                              activeColor: backgroundPrimary,
                              value: isInjuriesChecked,
                              onChanged: (value) {
                                setState(() {
                                  isInjuriesChecked = value ?? false;
                                });
                              },
                            ),

                            const SizedBox(height: 25,),

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

                                    ElevatedButton.icon(
                                      onPressed: () {
                                      },
                                      icon: const Icon(
                                        Icons.call,
                                        color: bgWhite,
                                      ),
                                      label: Text(
                                        'CALL 911',
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
                                        backgroundColor: Colors.red,
                                        foregroundColor: Colors.redAccent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30.0),
                                        ),
                                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                      ),
                                    ),

                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: getButtonColor(),
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          if (isInjuriesChecked && isLocationChecked) {
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