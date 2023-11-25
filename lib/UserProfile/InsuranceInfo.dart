//Insurance information
import 'package:flutter/material.dart';
import 'package:sdfinal/global.dart';
import 'package:sdfinal/UserProfile/VehicleInfo.dart';
import 'package:google_fonts/google_fonts.dart';


class InsuranceInfoPage extends StatefulWidget {

  const InsuranceInfoPage({super.key});

  @override
  State<InsuranceInfoPage> createState() => _InsuranceInfoPageState();
}

class _InsuranceInfoPageState extends State<InsuranceInfoPage> {
  TextEditingController insuranceCompany = TextEditingController();

  TextEditingController policyHolderName = TextEditingController();

  TextEditingController policyNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Add Your Insurance',
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
                    "for ease of access, in the future.",
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
                              'Insurance Company',
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
                                      controller: insuranceCompany,
                                      decoration: InputDecoration(
                                          hintText: "Ex: Progressive",
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
                              'Policyholder Name',
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
                                      controller: policyHolderName,
                                      decoration: InputDecoration(
                                          hintText: "Ex: Abis Naqvi",
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
                              "Policy Number",
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
                                      controller: policyNumber,
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
                                    "Where do I find my policy number?",
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
                                        const VehicleInfoPage()));
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
                    'Finding Policy Number',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: contrastAccentOne,
                      ),
                    ),
                  ),
                  Image.asset(
                    insuranceInfo,
                  ),
                  Text(
                    "Most commonly found under the policyholder's name on your insurance card.",
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

