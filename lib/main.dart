import 'package:flutter/material.dart';
import 'package:smart_care_dentists/Screens/onboard.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // FlutterStatusbarcolor.setStatusBarColor(Colors.blueAccent[400]);
    // FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    return SplashScreen(
        seconds: 4,
        navigateAfterSeconds: new OnBoard(),
        // OnBoard(),
        image: new Image.asset(
          'Assets/smartcare.png',
          fit: BoxFit.fill,
          // width: 700,
          // height: 700,
        ),
        // title: Text(
        //   'Smart Care Dentist',
        //   style: TextStyle(fontSize: 22),
        // ),
        backgroundColor: Colors.white,
        photoSize: 150,
        loaderColor: Colors.blue[900]);
  }
}
