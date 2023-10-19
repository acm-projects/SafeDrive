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
        child: Stack(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 250,
                    height: 250,
                    child: Image.asset('assets/images/stopsign.png'),
                  ),

                  const SizedBox(height: 50),
                  FloatingActionButton(
                    onPressed: () {
                      // Handle button press here
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
            Positioned(
              bottom: 20,
              right: 20,
              child: TriangleButton(
                onPressed: () {
                  // Handle triangle button press here
                },
              ),
              backgroundColor: const Color(0xFFFC766A),
              shape: TriangleBorder(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count += 1;
          },
         backgroundColor: const Color(0xFFFC766A),
         shape: TriangleBorder();
        );
        },

        child: const Icon(Icons.add),
      ),
    );
  }
}

class TriangleButton extends StatelessWidget {
  final VoidCallback onPressed;

  TriangleButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(40, 40), // Adjust the size as needed
      painter: TrianglePainter(color: const Color(0xFF00FF00)),
      child: InkWell(
        onTap: onPressed,
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color color;

  TrianglePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = color;
    final Path path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width / 2, 0)
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
