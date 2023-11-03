//Welcome Screen
import 'package:flutter/material.dart';
import 'package:pr1/global.dart';
import 'package:pr1/UserOnboarding/ExistingUser.dart';
import 'package:pr1/UserOnboarding/NewUser.dart';

void main() => runApp(
    const MaterialApp(
      home: WelcomeScreen(),
    ) //Material App
);

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  backgroundPrimary,
                  Colors.blue.shade900,
                  backgroundAccentOne,
                ]
            )
        ),
        child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 200.0),
                child: Image(image: AssetImage('assets/SafeDriveLogo.jpg')),
              ),
              const SizedBox(
                height: 100,
              ),
              const Text('Welcome to SafeDrive.',style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
              ),),
              const SizedBox(height: 30,),
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
                  child: const Center(child: Text('SIGN IN',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),),
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
                  child: const Center(child: Text('GET STARTED',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),),
                ),
              ),
              const Spacer()
            ]
        ),
      ),
    );
  }
}