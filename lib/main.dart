// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(const MyApp());

// const p1image = 'assets/images/image2.jpeg';
// const p2image = 'assets/images/IMG_5659.jpg';
// const p3image = 'assets/images/image3.jpg';
// const p4image = 'assets/images/image4.jpg';
// const p5image = 'assets/images/image5.jpg';
const totalpagenumber = 5;

// -------------Root-------------
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
      seconds: 8,
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

// -------------Home class-------------
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // -----Scrolling attributes-----
  double offset = 0; // Scrollbar position
  double buffer = 99999; // Scrolling buffer between each page
  double top_page2 = 99999; // Top position for each pages
  double top_page3 = 99999;
  double top_page4 = 99999;

  var height; // Width & height of user screen
  var width;

  // -----Scrolling methods-----

  // Whenever end user move scroll bar, scrolling attributes will be updated
  bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
    setState(() => offset = scrollNotification.metrics.pixels);
    setState(() => top_page2 = calculateTop(2));
    setState(() => top_page3 = calculateTop(3));
    setState(() => top_page4 = calculateTop(4));
    return true;
  }

  // If the page hits the top of the screen (top position<= 0), set the top value 0 so the widget sticks on the top.
  double calculateTop(int page) {
    double top_placeholder = ((height * (page - 1)) + (buffer * (page - 1)));
    double top_current =
        top_placeholder - offset; // Offset = how much pixel has scrolled down
    double stop_point = -1 * buffer;

    if (top_current > height) {
      // Should hold
      return top_current + offset;
    } else if (top_current < height && top_current > stop_point) {
      //  Should start moving
      return top_current;
    } else {
      // Should stick at the top
      return stop_point;
    }
  }

  // Build this page
  @override
  Widget build(BuildContext context) {
    // Assign screen height + width when building
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    buffer = height * 0.5; // Adjust your scrolling buffer size here

    return Material(
      child: NotificationListener<ScrollNotification>(
        // Set scrolling controller
        onNotification: updateOffsetAccordingToScroll,
        child: ScrollConfiguration(
          behavior: NoScrollGlow(),
          child: Stack(
            children: <Widget>[
              page1(),
              page2(),
              page3(),
              page4(),
              last_page(),
            ],
          ),
        ),
      ),
    );
  }

  Widget page1() {
    return Positioned(
      top: 0, // page1 is fixed
      child: FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image:
            'https://images.unsplash.com/photo-1515549832467-8783363e19b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZHVsbCUyMGJhY2tncm91bmRzfGVufDB8fDB8d2hpdGV8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        height: height,
        width: width,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget page2() {
    return Positioned(
        top: top_page2,
        child: Column(children: [
          SizedBox(height: buffer),
          FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:
                'https://images.unsplash.com/photo-1531315630201-bb15abeb1653?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGJhY2tncm91bmR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
            height: height,
            width: width,
            fit: BoxFit.fitWidth,
          )
        ]));
  }

  Widget page3() {
    return Positioned(
        top: top_page3,
        child: Column(children: [
          SizedBox(height: buffer),
          FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:
                'https://images.unsplash.com/photo-1515462277126-2dd0c162007a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI4fHxiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
            height: height,
            width: width,
            fit: BoxFit.fitWidth,
          )
        ]));
  }

  Widget page4() {
    return Positioned(
        top: top_page4,
        child: Column(children: [
          SizedBox(height: buffer),
          FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:
                'https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzd8fGJhY2tncm91bmR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
            height: height,
            width: width,
            fit: BoxFit.fitWidth,
          )
        ]));
  }

  // Last page uses singleChildScrollView to expand the page length (height*page number)
  Widget last_page() {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SizedBox(
            height:
                height * (totalpagenumber - 1) + buffer * (totalpagenumber)),
        //
        Positioned(
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:
                'https://images.unsplash.com/photo-1487700160041-babef9c3cb55?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzF8fGJhY2tncm91bmR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
            height: height,
            width: width,
            fit: BoxFit.cover,
          ),
        ),
        const Text(
          'Thank You',
          style: TextStyle(
            backgroundColor: Colors.black54,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    ));
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
