import 'package:flutter/material.dart';

class AccidentReport2 extends StatefulWidget {
  const AccidentReport2({Key? key}) : super(key: key);

  @override
  State<AccidentReport2> createState() => _AccidentReport2State();
}

class _AccidentReport2State extends State<AccidentReport2> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF04064D), // Change the color of the AppBar here
        title: Text(count.toString()),
      ),
      body: Container(
        // Set the background color of the body (you can use a different color or set it to white)
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 250,  // Set the desired width
                height: 250, // Set the desired height
                child: Image.asset('assets/images/stopsign.png'), // Add the image
              ),
              const SizedBox(height: 20), // Reduce the spacing between the image and text
              Text(
                'Please call 911 immediately before proceeding.',
                style: TextStyle(color: Colors.black, fontSize: 36),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50), // Add spacing between the text and the circular button

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count += 1;
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
