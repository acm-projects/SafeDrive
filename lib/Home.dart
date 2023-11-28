import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './global.dart';
import 'NavBar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<_ChartData> hardBrakes;
  late List<_ChartData> avgSpeed;
  late List<_ChartData> collisionWarnings;
  bool isChart1Visible = false;
  bool isChart2Visible = false;
  bool isChart3Visible = false;
  @override
  void initState() {
    hardBrakes = [
      _ChartData('January', 13),
      _ChartData('February', 22),
      _ChartData('March', 19),
      _ChartData('April', 11),
      _ChartData('May', 17),
      _ChartData('June', 10),
      _ChartData('July', 12),
      _ChartData('August', 20),
      _ChartData('September', 12),
      _ChartData('October', 18),
      _ChartData('November', 14),
      _ChartData('December', 9),
    ];

    avgSpeed = [
      _ChartData('January', 38),
      _ChartData('February', 42),
      _ChartData('March', 39),
      _ChartData('April', 43),
      _ChartData('May', 40),
      _ChartData('June', 55),
      _ChartData('July', 47),
      _ChartData('August', 35),
      _ChartData('September', 37),
      _ChartData('October', 46),
      _ChartData('November', 41),
      _ChartData('December', 53),
    ];

    collisionWarnings = [
      _ChartData('January', 12),
      _ChartData('February', 7),
      _ChartData('March', 4),
      _ChartData('April', 9),
      _ChartData('May', 6),
      _ChartData('June', 2),
      _ChartData('July', 7),
      _ChartData('August', 4),
      _ChartData('September', 6),
      _ChartData('October', 5),
      _ChartData('November', 3),
      _ChartData('December', 1),
    ];

    isChart1Visible = true; // Initialize to true for Hard Brakes Week report
    isChart2Visible = true; // Initialize to true for Toggle Chart 2
    isChart3Visible = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/SDBackground.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          bottomNavigationBar: const NavBar(initialIndex: 0,),
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
                  Center(
                    child: Text(
                      'My\nDashboard',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          color: bgWhite,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
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
                          Text(
                            'Trip Statistics',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: backgroundPrimary,
                              ),
                            ),
                          ),
                          const Divider(
                            thickness: 2.5,
                            color: backgroundPrimary,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: width * 0.80,
                            decoration: BoxDecoration(
                              color: backgroundAccentOne,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child:  ExpansionTile(
                              title: Text(
                                'Collision Warnings',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: contrastAccentOne,
                                  ),
                                ),
                              ),

                              subtitle: Text(
                                'per month',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: contrastAccentOne,
                                  ),
                                ),
                              ),

                              children: [
                                if (isChart3Visible)
                                  SizedBox(
                                    height: 300,
                                    child: SfCartesianChart(
                                      primaryXAxis: CategoryAxis(),
                                      primaryYAxis: NumericAxis(
                                        minimum: 0,
                                        maximum: 15,
                                        interval: 5,
                                      ),
                                      tooltipBehavior: TooltipBehavior(enable: true),
                                      series: <ChartSeries<_ChartData, String>>[
                                        ColumnSeries<_ChartData, String>(
                                          dataSource: collisionWarnings,
                                          xValueMapper: (_ChartData data, _) => data.x,
                                          yValueMapper: (_ChartData data, _) => data.y,
                                          name: 'Number',
                                          color: backgroundPrimary,
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: width * 0.80,
                            decoration: BoxDecoration(
                              color: backgroundAccentOne,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ExpansionTile(
                              title: Text(
                                'Average Speed',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: contrastAccentOne,
                                  ),
                                ),
                              ),

                              subtitle: Text(
                                'per month (mph)',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: contrastAccentOne,
                                  ),
                                ),
                              ),

                              children: [
                                if (isChart2Visible)
                                  SizedBox(
                                    height: 300,
                                    child: SfCartesianChart(
                                      primaryXAxis: CategoryAxis(),
                                      primaryYAxis: NumericAxis(
                                        minimum: 0,
                                        maximum: 60,
                                        interval: 10,
                                      ),
                                      tooltipBehavior: TooltipBehavior(enable: true),
                                      series: <ChartSeries<_ChartData, String>>[
                                        LineSeries<_ChartData, String>(
                                          dataSource: avgSpeed,
                                          xValueMapper: (_ChartData data, _) => data.x,
                                          yValueMapper: (_ChartData data, _) => data.y,
                                          name: 'Number',
                                          color: backgroundPrimary,
                                          markerSettings: const MarkerSettings(isVisible: true),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: width * 0.80,
                            decoration: BoxDecoration(
                              color: backgroundAccentOne,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ExpansionTile(
                              title: Text(
                                'Hard Brakes',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: contrastAccentOne,
                                  ),
                                ),
                              ),
                              subtitle: Text(
                                'per month',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: contrastAccentOne,
                                  ),
                                ),
                              ),
                              children: [
                                if (isChart1Visible)
                                  SizedBox(
                                    height: 300,
                                    child: SfCartesianChart(
                                      primaryXAxis: CategoryAxis(),
                                      primaryYAxis: NumericAxis(
                                        minimum: 0,
                                        maximum: 25,
                                        interval: 5,
                                      ),
                                      tooltipBehavior: TooltipBehavior(enable: true),
                                      series: <ChartSeries<_ChartData, String>>[
                                        ColumnSeries<_ChartData, String>(
                                          dataSource: hardBrakes,
                                          xValueMapper: (_ChartData data, _) => data.x,
                                          yValueMapper: (_ChartData data, _) => data.y,
                                          name: 'Number',
                                          color: backgroundPrimary,
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}


class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}