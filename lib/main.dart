import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(home: Splash());
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            title: 'Work',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: MyHomePage(),
          );
        }
      },
    );
  }
}

//+++++++++++++++++++++++++++++++++
//
//
// import 'package:flutter/material.dart';
// import 'package:splashscreen/splashscreen.dart';

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Work',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: Splash(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
// class Splash extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     bool lightMode =
//         MediaQuery.of(context).platformBrightness == Brightness.light;
//     return Scaffold(
//       // seconds: 5,
//       // navigateAfterSeconds: MyHomePage(),
//       backgroundColor: lightMode
//           ? const Color(0x00e1f5fe).withOpacity(1.0)
//           : const Color(0x00042a49).withOpacity(1.0),
//       body: Center(
//           child: lightMode
//               ? Image.asset('assets/images/splashpage_black.png')
//               : Image.asset('assets/images/splashpage_red.png')),
//     );
//     // return SplashScreen(
//     //   seconds: 5,
//     //   navigateAfterSeconds: MyHomePage(),
//     //   title: const Text(
//     //     "Let'sStopAids",
//     //     textScaleFactor: 2,
//     //   ),
//     //   image: Image.asset('assets/images/splashpage_black.png'),
//     //   loadingText: const Text("Hang On!"),
//     //   photoSize: 200.0,
//     //   loaderColor: Colors.blue,
//     // );
//   }
// }

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

                          // const SizedBox(
                          //   height: 50,
                          // )
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
                            "SPEAKERS",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 50,
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

                          // const SizedBox(
                          //   height: 50,
                          // )
                        ],
                      ),
                      const Text(
                        "SPEAKERS",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 50,
                            fontFamily: "Poppins",
                            letterSpacing: 1.8,
                            color: Color(0xffffaf00)),
                      ),
                      GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(10),
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        crossAxisCount: 3,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8),
                            child:
                                const Text("He'd have you all unravel at the"),
                            color: Colors.teal[100],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: const Text('Heed not the rabble'),
                            color: Colors.teal[200],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: const Text('Sound of screams but the'),
                            color: Colors.teal[300],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: const Text('Who scream'),
                            color: Colors.teal[400],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: const Text('Revolution is coming...'),
                            color: Colors.teal[500],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: const Text('Revolution, they...'),
                            color: Colors.teal[600],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: const Text('Revolution, they...'),
                            color: Colors.teal[600],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: const Text('Revolution, they...'),
                            color: Colors.teal[600],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: const Text('Revolution, they...'),
                            color: Colors.teal[600],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: const Text('Revolution, they...'),
                            color: Colors.teal[600],
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
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

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool lightMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      backgroundColor: lightMode
          ? Color(0xe1f5fe).withOpacity(1.0)
          : Color(0x042a49).withOpacity(1.0),
      body: Center(
          child: lightMode
              ? Image.asset('assets/images/splashpage_black.png')
              : Image.asset('assets/images/splashpage_red.png')),
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    await Future.delayed(const Duration(seconds: 5));
  }
}
