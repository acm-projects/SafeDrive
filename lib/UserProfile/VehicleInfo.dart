//Login Screens
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdfinal/global.dart';
import 'package:sdfinal/Profile.dart';

class VehicleInfoPage extends StatelessWidget {
  TextEditingController vehicleMakeModel = TextEditingController();
  TextEditingController vehicleLicensePlate = TextEditingController();
  TextEditingController vehicleIdentification = TextEditingController();

  VehicleInfoPage({super.key});

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
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Text(
                    'Add a Vehicle',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: bgWhite,
                        )
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    "to your profile, by filling out these fields.",
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
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))
                ),

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
                              'Vehicle Make & Model',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: backgroundPrimary,
                                  )
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: bgWhite,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [BoxShadow(
                                      color: backgroundAccentOne,
                                      blurRadius: 20,
                                      offset: Offset(0, 10)
                                  )
                                  ]
                              ),

                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(
                                            color: Colors.grey.shade200))
                                    ),
                                    child: TextField(
                                      controller: vehicleMakeModel,
                                      decoration: InputDecoration(
                                          hintText: "Ex: Toyota Corolla",
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


                            const SizedBox(height: 10,),
                            Text(
                              'Vehicle License Plate Number',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: backgroundPrimary,
                                  )
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: bgWhite,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [BoxShadow(
                                      color: backgroundAccentOne,
                                      blurRadius: 20,
                                      offset: Offset(0, 10)
                                  )
                                  ]
                              ),

                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(
                                            color: Colors.grey.shade200))
                                    ),
                                    child: TextField(
                                      controller: vehicleLicensePlate,
                                      decoration: InputDecoration(
                                          hintText: "Ex: ACM 2023",
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


                            const SizedBox(height: 10,),
                            Text(
                              "Vehicle Identification Number (VIN)",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: backgroundPrimary,
                                  )
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: bgWhite,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [BoxShadow(
                                      color: backgroundAccentOne,
                                      blurRadius: 20,
                                      offset: Offset(0, 10)
                                  )
                                  ]
                              ),

                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(
                                            color: Colors.grey.shade200))
                                    ),
                                    child: TextField(
                                      controller: vehicleIdentification,
                                      decoration: InputDecoration(
                                          hintText: "Ex: 97462315",
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

                            const SizedBox(height: 25,),

                            GestureDetector(
                              onTap: () {
                                _showPopUp(context);
                              },
                              child: Center(
                                  child: Text(
                                    "Where do I find my vehicle's VIN?",
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: backgroundPrimary,
                                      ),
                                    ),
                                  )
                              ),
                            ),


                            const SizedBox(height: 25,),

                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>
                                        const ProfilePage()));
                              },

                              child: Center(
                                child: Container(
                                  height: 53,
                                  width: 320,
                                  decoration: BoxDecoration(
                                    color: contrastAccentOne,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: contrastAccentOne),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '> FINISH >',
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

  void _showPopUp(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: bgWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Container(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Finding my VIN',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: contrastAccentOne,
                      ),
                    ),
                  ),
                  Image.asset(
                    findingVIN,
                  ),
                  Text(
                    "Most commonly found found on the bottom, driver's side corner of the front windshield.",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: backgroundPrimary,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(contrastAccentOne),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Got It!',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: bgWhite,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}