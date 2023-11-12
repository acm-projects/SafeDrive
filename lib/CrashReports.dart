import 'package:flutter/material.dart';
import './global.dart';
import 'NavBar.dart';

class CrashReports extends StatelessWidget {
  const CrashReports({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    backgroundPrimary,
                    Colors.blue.shade900,
                    Colors.blue.shade800,
                  ]
              )
          ),
        ),
        Scaffold(
          bottomNavigationBar: const NavBar(),
          //Button to add vehicle
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: contrastAccentOne,
            splashColor: contrastAccentTwo,
            child: const Icon(Icons.warning),
          ),
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
                  const Text(
                    'Help\nCenter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontFamily: 'Nisebuschgardens',
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  SizedBox(//container
                    height: height * 0.5,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double innerHeight = constraints.maxHeight;
                        double innerWidth = constraints.maxWidth;
                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: innerHeight * 0.75,
                                width: innerWidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: backgroundAccentTwo,
                                ),
                                child: const Column(
                                  children: [
                                    SizedBox(
                                      height: 80,
                                    ),
                                    Text(
                                      'John Doe',
                                      style: TextStyle(
                                        color: contrastAccentTwo,
                                        fontSize: 36,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),

                                    Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text("Date of Birth: ", textAlign: TextAlign.center, style: TextStyle(color: backgroundPrimary, fontSize: 18)),
                                          ),

                                          Expanded(
                                            child: Text("USER DOB HERE ", textAlign: TextAlign.center, style: TextStyle(color: backgroundPrimary, fontSize: 18)),
                                          ),
                                        ]
                                    ),

                                    Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text("Phone Number: ", textAlign: TextAlign.center, style: TextStyle(color: backgroundPrimary, fontSize: 18)),
                                          ),

                                          Expanded(
                                            child: Text("USER PHONE HERE ", textAlign: TextAlign.center, style: TextStyle(color: backgroundPrimary, fontSize: 18)),
                                          ),
                                        ]
                                    ),

                                    Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text("DL: ", textAlign: TextAlign.center, style: TextStyle(color: backgroundPrimary, fontSize: 18)),
                                          ),

                                          Expanded(
                                            child: Text("USER Driver's License Num HERE ", textAlign: TextAlign.center, style: TextStyle(color: backgroundPrimary, fontSize: 18)),
                                          ),
                                        ]
                                    ),

                                    Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text("Insurance Company: ", textAlign: TextAlign.center, style: TextStyle(color: backgroundPrimary, fontSize: 18)),
                                          ),

                                          Expanded(
                                            child: Text("USER INSURANCE HERE", textAlign: TextAlign.center, style: TextStyle(color: backgroundPrimary, fontSize: 18)),
                                          ),
                                        ]
                                    ),

                                    Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text("Policy Holder: ", textAlign: TextAlign.center, style: TextStyle(color: backgroundPrimary, fontSize: 18)),
                                          ),

                                          Expanded(
                                            child: Text("PHN NAME ", textAlign: TextAlign.center, style: TextStyle(color: backgroundPrimary, fontSize: 18)),
                                          ),
                                        ]
                                    ),

                                    Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text("Policy Number: ", textAlign: TextAlign.center, style: TextStyle(color: backgroundPrimary, fontSize: 18)),
                                          ),

                                          Expanded(
                                            child: Text("USER PN HERE ", textAlign: TextAlign.center, style: TextStyle(color: backgroundPrimary, fontSize: 18)),
                                          ),
                                        ]
                                    )
                                  ],
                                ),
                              ),
                            ),

                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Image.asset(
                                  userProfile,
                                  width: innerWidth * 0.45,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: height * 0.5,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: bgWhite,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'My Accidents',
                            style: TextStyle(
                              color: backgroundPrimary,
                              fontSize: 27,
                            ),
                          ),
                          const Divider(
                            thickness: 2.5,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}