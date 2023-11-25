import 'package:sdfinal/AccidentAssistance/CrashReports.dart';
import 'Home.dart';
import 'Profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import './global.dart';
import 'package:google_fonts/google_fonts.dart';


class NavBar extends StatefulWidget {

  final int initialIndex;
  const NavBar({super.key, required this.initialIndex});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _pageIndex = 0; // Default value

  @override

  void initState() {
    super.initState();
    _pageIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgWhite,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
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
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: GNav(
          backgroundColor: bgWhite,
          curve: Curves.easeOutExpo,
          duration: const Duration(milliseconds: 250),
          gap: 10,
          color: backgroundPrimary,
          activeColor: contrastAccentOne,
          tabBackgroundColor: backgroundAccentOne,
          padding: const EdgeInsets.all(20),

          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
              textStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 15,
                    color: contrastAccentOne,
                    fontWeight: FontWeight.bold,
                  )
              ),

            ),
            GButton(
              icon: Icons.videocam,
              text: 'Camera',
              textStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 15,
                    color: contrastAccentOne,
                    fontWeight: FontWeight.bold,
                  )
              ),
            ),
            GButton(
              icon: Icons.car_crash,
              text: 'Accident',
              textStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 15,
                    color: contrastAccentOne,
                    fontWeight: FontWeight.bold,
                  )
              ),
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
              textStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 15,
                    color: contrastAccentOne,
                    fontWeight: FontWeight.bold,
                  )
              ),
            ),
          ],

          selectedIndex: _pageIndex,
          onTabChange: (index) {
            setState(() {
              _pageIndex = index;
            });

            if (_pageIndex == 0) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            } else if (_pageIndex == 1) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CameraPage(),
                ),
              );
            } else if (_pageIndex == 2) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CrashReports(),
                ),
              );
            } else if (_pageIndex == 3) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            }
          },

        ),
      ),
    );
  }
}

class CameraPage extends StatelessWidget {
  const CameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Camera Page'),
    );
  }
}