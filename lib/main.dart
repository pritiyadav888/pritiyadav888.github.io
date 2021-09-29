import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: MyHomePage(),
      title: const Text(
        "Let'sStopAids",
        textScaleFactor: 2,
      ),
      image: Image.asset('assets/images/splashpage_black.png'),
      loadingText: const Text("Hang On!"),
      photoSize: 200.0,
      loaderColor: Colors.blue,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double imgRateZero = 0;
  double imgRateOne = 0;
  double imgRateTwo = 0;
  double imgRateThree = 0;
  double imgRateFour = 0;
  double imgRateFive = 0;
  double imgRateSix = 0;
  double imgRateSeven = 0;
  double imgRateEight = 90;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff210002),
      body: NotificationListener(
        onNotification: (sc) {
          if (sc is ScrollUpdateNotification) {
            setState(() {
              imgRateEight -= sc.scrollDelta! / 1;
              imgRateSeven -= sc.scrollDelta! / 1.5;
              imgRateSix -= sc.scrollDelta! / 2;
              imgRateFive -= sc.scrollDelta! / 2.5;
              imgRateFour -= sc.scrollDelta! / 3;
              imgRateThree -= sc.scrollDelta! / 3.5;
              imgRateTwo -= sc.scrollDelta! / 4;
              imgRateOne -= sc.scrollDelta! / 4.5;
              imgRateZero -= sc.scrollDelta! / 5;
            });
          }
          return true;
        },
        child: Stack(
          children: <Widget>[
            ParallaxWidget(top: imgRateZero, asset: "image2"),
            ListView(
              children: <Widget>[
                Container(
                  height: 600,
                  color: Colors.transparent,
                ),
                Container(
                  color: const Color(0xff210002),
                  width: MediaQuery.of(context).size.width,
                  height: 1500,
                  padding: const EdgeInsets.only(top: 70),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "SIGN ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: "Poppins",
                                letterSpacing: 1.8,
                                color: Color(0xffffaf00)),
                          ),
                          const Text(
                            "UP",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 48,
                                fontFamily: "Poppins",
                                letterSpacing: 1.8,
                                color: Color(0xffffaf00)),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 150,
                                child: const Divider(
                                  height: 1,
                                  color: Color(0xffffaf00),
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffffaf00),
                                ),
                                child: const Divider(
                                  height: 1,
                                  color: Color(0xffffaf00),
                                ),
                              ),
                              Container(
                                width: 150,
                                child: const Divider(
                                  height: 1,
                                  color: const Color(0xffffaf00),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          const SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: const Color(0xff545e41),
                  width: MediaQuery.of(context).size.width,
                  height: 1500,
                  padding: const EdgeInsets.only(top: 70),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "SCHEDULE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 50,
                                fontFamily: "Poppins",
                                letterSpacing: 1.8,
                                color: Color(0xffffaf00)),
                          ),
                          const Text(
                            "NOVEMBER 20",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: "Poppins",
                                letterSpacing: 1.8,
                                color: Color(0xffffaf00)),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 150,
                                child: const Divider(
                                  height: 1,
                                  color: Color(0xffffaf00),
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffffaf00),
                                ),
                                child: const Divider(
                                  height: 1,
                                  color: Color(0xffffaf00),
                                ),
                              ),
                              Container(
                                width: 150,
                                child: const Divider(
                                  height: 1,
                                  color: const Color(0xffffaf00),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          // const Text(
                          //   "Made By",
                          //   textAlign: TextAlign.center,
                          //   style: TextStyle(
                          //     fontSize: 15,
                          //     fontFamily: "Poppins",
                          //     letterSpacing: 1.3,
                          //     color: Color(0xffffaf00),
                          //   ),
                          // ),
                          // const Text(
                          //   "XamDesign",
                          //   textAlign: TextAlign.center,
                          //   style: TextStyle(
                          //     fontSize: 20,
                          //     fontFamily: "Poppins",
                          //     letterSpacing: 1.8,
                          //     color: Color(0xffffaf00),
                          //   ),
                          // ),
                          const SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: const Color(0xffc1e0d9),
                  width: MediaQuery.of(context).size.width,
                  height: 1500,
                  padding: const EdgeInsets.only(top: 70),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "NOTIME",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: "Poppins",
                                letterSpacing: 1.8,
                                color: Color(0xffffaf00)),
                          ),
                          const Text(
                            "TOWAIT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 48,
                                fontFamily: "Poppins",
                                letterSpacing: 1.8,
                                color: Color(0xffffaf00)),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 150,
                                child: const Divider(
                                  height: 1,
                                  color: Color(0xffffaf00),
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffffaf00),
                                ),
                                child: const Divider(
                                  height: 1,
                                  color: Color(0xffffaf00),
                                ),
                              ),
                              Container(
                                width: 150,
                                child: const Divider(
                                  height: 1,
                                  color: const Color(0xffffaf00),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          // const Text(
                          //   "Made By",
                          //   textAlign: TextAlign.center,
                          //   style: TextStyle(
                          //     fontSize: 15,
                          //     fontFamily: "Poppins",
                          //     letterSpacing: 1.3,
                          //     color: Color(0xffffaf00),
                          //   ),
                          // ),
                          // const Text(
                          //   "XamDesign",
                          //   textAlign: TextAlign.center,
                          //   style: TextStyle(
                          //     fontSize: 20,
                          //     fontFamily: "Poppins",
                          //     letterSpacing: 1.8,
                          //     color: Color(0xffffaf00),
                          //   ),
                          // ),
                          const SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: const Color(0xff210002),
                  width: MediaQuery.of(context).size.width,
                  height: 1500,
                  padding: const EdgeInsets.only(top: 70),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "BACK TO HOME",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: "Poppins",
                                letterSpacing: 1.8,
                                color: Color(0xffffaf00)),
                          ),
                          const Text(
                            "SPEAKERS",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 48,
                                fontFamily: "Poppins",
                                letterSpacing: 1.8,
                                color: Color(0xffffaf00)),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 150,
                                child: const Divider(
                                  height: 1,
                                  color: Color(0xffffaf00),
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffffaf00),
                                ),
                                child: const Divider(
                                  height: 1,
                                  color: Color(0xffffaf00),
                                ),
                              ),
                              Container(
                                width: 150,
                                child: const Divider(
                                  height: 1,
                                  color: const Color(0xffffaf00),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          // const Text(
                          //   "Made By",
                          //   textAlign: TextAlign.center,
                          //   style: TextStyle(
                          //     fontSize: 15,
                          //     fontFamily: "Poppins",
                          //     letterSpacing: 1.3,
                          //     color: Color(0xffffaf00),
                          //   ),
                          // ),
                          // const Text(
                          //   "XamDesign",
                          //   textAlign: TextAlign.center,
                          //   style: TextStyle(
                          //     fontSize: 20,
                          //     fontFamily: "Poppins",
                          //     letterSpacing: 1.8,
                          //     color: Color(0xffffaf00),
                          //   ),
                          // ),
                          const SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ParallaxWidget extends StatelessWidget {
  const ParallaxWidget({
    Key? key,
    required this.top,
    required this.asset,
  }) : super(key: key);

  final double top;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset("assets/images/image2.jpeg", fit: BoxFit.cover),
      ),
    );
  }
}
