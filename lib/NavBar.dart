import 'package:sdfinal/CrashReports.dart';
import 'Home.dart';
import 'Profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import './global.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgWhite,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade900,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: const Offset(
                5.0,
                5.0,
              )
            )
          ]
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: GNav(
          backgroundColor: bgWhite,
          curve: Curves.easeOutExpo,
          duration: Duration(milliseconds: 500),
          gap: 10,
          color: backgroundPrimary,
          activeColor: contrastAccentOne,
          tabBackgroundColor: backgroundAccentOne,
          padding: EdgeInsets.all(20),
          tabs: [
            //Home
            GButton(
                icon: Icons.home,
                text: 'Home',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      )
                  );
                }
            ),
            GButton(
                icon: Icons.videocam,
                text: 'Camera',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CameraPage(),
                      )
                  );
                }
            ),
            GButton(
                icon: Icons.car_crash,
                text: 'Accident',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CrashReports(),
                      )
                  );
                }
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    )
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class CameraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Camera Page'),
    );
  }
}