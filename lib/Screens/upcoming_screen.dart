import 'package:flutter/material.dart';
import 'package:smart_care_dentists/Screens/upcoming_patient.dart';

class UpcomingScreen extends StatefulWidget {
  final text;
  UpcomingScreen({this.text});
  @override
  _UpcomingScreenState createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(widget.text,
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      backgroundColor: Colors.teal,
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                child: UpcomingPatient(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
