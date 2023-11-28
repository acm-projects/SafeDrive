import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdfinal/AccidentAssistance/AccidentChecklistOverview.dart';
import 'package:sdfinal/AccidentAssistance/StepThree-ExchangeInformation.dart';
import 'package:sdfinal/global.dart';

class StepThreeDocumentation extends StatefulWidget {
  const StepThreeDocumentation({super.key});

  @override
  State<StepThreeDocumentation> createState() => _StepThreeDocumentationState();
}

class _StepThreeDocumentationState extends State<StepThreeDocumentation> {
  bool licensePlates = false;
  bool ownDamage = false;
  bool otherDamage = false;
  bool locationMarker = false;
  bool propertyDamage = false;

  Color getButtonColor() {
    if (licensePlates && ownDamage && otherDamage && locationMarker && propertyDamage) {
      return contrastAccentTwo; // Set to ContrastAccentTwo if both are true
    } else {
      return Colors.grey; // Set to grey if either or both are false
    }
  }

  void _multiCarBranch(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: bgWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: SizedBox(
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Were there any other vehicles or people involved?',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: contrastAccentTwo,
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/MultipleCars.png',
                    height: 250,
                    width: 250,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(contrastAccentTwo),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const StepThreeExchangeInfo()));
                        },
                        child: Text(
                          'YES',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: bgWhite,
                            ),
                          ),
                        ),
                      ),

                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(contrastAccentOne),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const AccidentChecklist()));
                        },
                        child: Text(
                          'NO',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: bgWhite,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
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
                    'Document the Incident',
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
                    "after the police leave for future reference.",
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
                                "assets/DocumentationStep.png",
                                width: 200, // set the width as per your requirement
                                height: 200, // set the height as per your requirement
                              ),
                            ),

                            const SizedBox(height: 30),
                            Text(
                              "Photograph the following: ",
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
                                'License plate(s) of vehicles involved',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )
                                ),
                              ),
                              activeColor: backgroundPrimary,
                              value: licensePlates,
                              onChanged: (value) {
                                setState(() {
                                  licensePlates = value ?? false;
                                });
                              },
                            ),

                            CheckboxListTile(
                              title: Text(
                                'Damage to your own vehicle',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )
                                ),
                              ),
                              activeColor: backgroundPrimary,
                              value: ownDamage,
                              onChanged: (value) {
                                setState(() {
                                  ownDamage = value ?? false;
                                });
                              },
                            ),

                            CheckboxListTile(
                              title: Text(
                                "Damage to other vehicle(s)",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )
                                ),
                              ),
                              activeColor: backgroundPrimary,
                              value: otherDamage,
                              onChanged: (value) {
                                setState(() {
                                  otherDamage = value ?? false;
                                });
                              },
                            ),
                            CheckboxListTile(
                              title: Text(
                                "Street signs and location markers of the accident",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )
                                ),
                              ),
                              activeColor: backgroundPrimary,
                              value: locationMarker,
                              onChanged: (value) {
                                setState(() {
                                  locationMarker = value ?? false;
                                });
                              },
                            ),

                            CheckboxListTile(
                              title: Text(
                                'Damage to any private or public property',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: backgroundPrimary,
                                    )
                                ),
                              ),
                              activeColor: backgroundPrimary,
                              value: propertyDamage,
                              onChanged: (value) {
                                setState(() {
                                  propertyDamage = value ?? false;
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
                                          if (licensePlates && ownDamage && otherDamage && locationMarker && propertyDamage) {
                                            _multiCarBranch(context);
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