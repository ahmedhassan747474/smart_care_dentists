import 'package:flutter/material.dart';

import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:smart_care_dentists/Screens/signup_choose.dart';

class OnBoard extends StatefulWidget {
  OnBoard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: OverBoard(
        pages: pages,
        showBullets: true,
        skipCallback: () {
          _globalKey.currentState.showSnackBar(SnackBar(
            content: Text("Skip clicked"),
          ));
        },
        finishCallback: () {
          // _globalKey.currentState.showSnackBar(SnackBar(
          //   content: Text("Finish clicked"),
          // ));
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ChooseSignUp()));
        },
      ),
    );
  }

  final pages = [
    PageModel(
        color: const Color(0xFF536DFE),
        imageAssetPath: 'Assets/onboard1.png',
        title: 'Consultant Online With Best Doctors',
        body: 'Connect with the Doctors from different places',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFF00b8d4),
        imageAssetPath: 'Assets/onboard2.png',
        title: 'Choose your Best Doctor',
        body: 'Access a list of Qualified Doctors & make an Appointment',
        doAnimateImage: true),
    PageModel.withChild(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('Assets/onboard3.png', width: 250.0, height: 250.0),
          SizedBox(height: 65),
          Text('Welcome To',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 15),
          Text('Smart Care Dentist',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              )),
        ],
      ),
      color: const Color(0xFF0097A7),
      doAnimateChild: true,
    ),
  ];
}
