//Onboarding Screens
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdfinal/UserProfile/DriverInfo.dart';
import 'package:sdfinal/global.dart';
import 'package:sdfinal/UserOnboarding/ExistingUser.dart';

class NewUserPage extends StatefulWidget {

  const NewUserPage({super.key});

  @override
  State<NewUserPage> createState() => _NewUserPageState();
}

class _NewUserPageState extends State<NewUserPage> {
  TextEditingController fullName = TextEditingController();

  TextEditingController emailAddress = TextEditingController();

  TextEditingController passWord = TextEditingController();

  TextEditingController confPassword = TextEditingController();

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
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Text(
                    'Welcome to SafeDrive',
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
                    "Let's start with some basic credentials.",
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
                  padding: const EdgeInsets.all(20),

                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[
                          const SizedBox(height: 25),
                          //Input Text Field Container

                          Text(
                            'Full Name',
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
                                )]
                            ),

                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: fullName,
                                    decoration: InputDecoration(
                                        hintText: "Ex: John Doe",
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
                            'Email Address',
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
                                )]
                            ),

                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: emailAddress,
                                    decoration: InputDecoration(
                                        hintText: "Ex: johndoe@safedrive.com",
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
                            'Password',
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
                                )]
                            ),

                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: passWord,
                                    decoration: InputDecoration(
                                        hintText: "Ex: *******",
                                        hintStyle: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                            ),
                                      ),
                                    ) ,
                                ),
                                )],
                            ),
                          ),

                          const SizedBox(height: 10,),
                          Text(
                            'Re-Confirm Password',
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
                                )]
                            ),

                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    controller: confPassword,
                                    decoration: InputDecoration(
                                      hintText: "Ex: *******",
                                      hintStyle: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ) ,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 25,),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ExLoginPage()));
                            },
                            child: Center(
                                child: Text(
                                  "Already have an account? Sign in.",
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
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => DriverInfoPage()));
                            },

                            child: Center(
                              child: Container(
                                height: 53,
                                width: 320,
                                decoration: BoxDecoration(
                                  color: contrastAccentOne,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: contrastAccentOne),
                                    boxShadow: const [BoxShadow(
                                        color: backgroundAccentOne,
                                        blurRadius: 5,
                                        offset: Offset(0, 10)
                                    )]
                                ),
                                child: Center(
                                  child: Text(
                                    '> SIGN UP >',
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
}