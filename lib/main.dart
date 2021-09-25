import 'package:flutter/material.dart';
// Import transparent_image in pubspec.yaml file
import 'package:transparent_image/transparent_image.dart';

import 'aboutPage/about_page.dart';

void main() {
  runApp(ScrollTransition());
}

class ScrollTransition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LetsStopAids',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double offset = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final nameStyle = Theme.of(context).textTheme.headline2;
    final descriptionStyle = Theme.of(context).textTheme.headline4;
    return Material(
      child: NotificationListener<ScrollNotification>(
        // When user scrolls, this will trigger onNotification.
        // updateOffsetAccordingToScroll updates the offset
        onNotification: updateOffsetAccordingToScroll,
        // ScrollConfiguration sets the scroll glow behaviour
        child: ScrollConfiguration(
          behavior: NoScrollGlow(),
          child: Stack(
            children: <Widget>[
              Positioned(
                // The hero image will be pushed up once user scrolls up
                // That is why it is multiplied negatively.
                top: -.25 * offset,
                child: FadeInImage.memoryNetwork(
                  // From the transparent_image package
                  placeholder: kTransparentImage,
                  image: kHeroImage,
                  height: height,
                  width: width,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Positioned(
                top: -.25 * offset,
                child: SizedBox(
                  height: height,
                  width: width,
                  child: Align(
                      alignment: const Alignment(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Let'sStopAids",
                            style: nameStyle!.copyWith(
                              backgroundColor: Colors.white,
                            ),
                          ),
                          // SizedBox(height: 20),
                          // Text(
                          //   'Proving learning coding, is easy',
                          //   style: descriptionStyle!.copyWith(
                          //     backgroundColor: Colors.white,
                          //   ),
                          // ),
                        ],
                      )),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: height),
                    Container(
                      height: height,
                      width: width,
                      color: Colors.blueAccent,
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'xxcvcv',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // SingleChildScrollView(
              //   child: AboutPage(),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  /// Returns true to cancel the notification bubbling.
  bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
    setState(() => offset = scrollNotification.metrics.pixels);
    return true;
  }
}

class NoScrollGlow extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}

const kHeroImage =
    'https://images.unsplash.com/photo-1542966336-22953b5f7404?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmVkJTIwYmFja2dyb3VuZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60';
// const gHeroImage =
//     'https://images.unsplash.com/photo-1518893063132-36e46dbe2428?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmVkJTIwYmFja2dyb3VuZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60';
