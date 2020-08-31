import 'package:flutter/material.dart';

class Step2 extends StatefulWidget {
  @override
  _Step2State createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  final _formkey = GlobalKey<FormState>();
  String gender = 'male';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // ************** Reason For Consultation ************
          Text("Reason for Consultation",
              style: TextStyle(color: Colors.black, fontSize: 18.0)),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'This Field can not be Empty';
              }
              if (value.length < 4) {
                return 'Please Enter Full Name';
              }
              return null;
            },
            // decoration: InputDecoration(
            //     // labelText: 'Your Name',
            //     // helperText: 'i.e., John Wick',
            //     // hintText: 'John Wick'
            //     ),
          ),
          SizedBox(height: 10.0),

          // ************** Contact Number *******************
          Text("Any Previous Disease",
              style: TextStyle(color: Colors.black, fontSize: 18.0)),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'This Field can not be Empty';
              }
              if (value.length < 4) {
                return 'Please Enter Full Name';
              }
              return null;
            },
            // decoration: InputDecoration(
            //     // labelText: 'Your Contact Number',
            //     // helperText: '+123456789',
            //     hintText: '+92123456789'),
          ),
          SizedBox(height: 10.0),

          // ******************* Last Treatment ****************

          Text("When were the last treatment you had?",
              style: TextStyle(color: Colors.black, fontSize: 18.0)),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'This Field can not be Empty';
              }
              if (value.length < 4) {
                return 'Please Enter Full Name';
              }
              return null;
            },
            //   decoration: InputDecoration(
            //       labelText: 'Your City/State', hintText: '+92123456789'),
          ),
          SizedBox(height: 10.0),

          // ******************* Any Allergy ****************
          SizedBox(height: 10.0),
          Text("Any Allergy",
              style: TextStyle(color: Colors.black, fontSize: 18.0)),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'This Field can not be Empty';
              }
              if (value.length < 4) {
                return 'Please Enter Full Name';
              }
              return null;
            },
            //   decoration: InputDecoration(
            //       labelText: 'Your City/State', hintText: '+92123456789'),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
