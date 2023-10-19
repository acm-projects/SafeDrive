import 'package:flutter/material.dart';

class AccidentReport extends StatefulWidget {
  const AccidentReport({Key? key}) : super(key: key);

  @override
  State<AccidentReport> createState() => _AccidentReportState();
}

class _AccidentReportState extends State<AccidentReport> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF04064D),
        title: Text(count.toString()),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 250,
                height: 250,
                child: Image.asset('assets/images/stopsign.png'),
              ),
              const SizedBox(height: 20),
              Text(
                'Please call 911 immediately before proceeding.',
                style: TextStyle(color: Colors.black, fontSize: 36),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              FloatingActionButton(
                onPressed: () {
                  // Navigate to the next page when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccidentReport2()),
                  );
                },
                backgroundColor: const Color(0xFFFC766A),
                child: Icon(
                  Icons.pause,
                  size: 50.0,
                ),
                shape: CircleBorder(),
                tooltip: 'Emergency Call',
              ),
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

class AccidentReport2 extends StatelessWidget {
  const AccidentReport2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var child;
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 50),
            Text(
              'Stay calm and check for injuries',
              style: TextStyle(color: Colors.black, fontSize: 36),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            Image.asset('assets/images/car injury.jpeg')
          ],
        ),
      ),
    );
  }
}