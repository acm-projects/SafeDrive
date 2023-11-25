//Welcome Screen
import 'package:flutter/material.dart';
import './ExistingUser.dart';
import './NewUser.dart';
import 'package:sdfinal/global.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(
    const MaterialApp(
      home: WelcomeScreen(),
    ) //Material App
);

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/SDBackground.png'),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Image(image: AssetImage('assets/SafeDriveLogo.png')),
              ),
              const SizedBox(
                height: 50,
              ),

               Center(
                 child: Text(
                  'Welcome to \n  SafeDrive',
                  style: GoogleFonts.poppins
                    (
                      textStyle: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                    ),
                  ),
                ),
               ),
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ExLoginPage()));
                },
                child: Container(
                  height: 53,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                    child: Text(
                      'SIGN IN',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: bgWhite,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewUserPage()));
                },
                child: Container(
                  height: 53,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                    child: Text(
                      'GET STARTED',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: backgroundPrimary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer()
            ]
        ),
      ),
    );
  }
}