import 'package:flutter/material.dart';

class Step1 extends StatefulWidget {
  @override
  _Step1State createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  final _formkey = GlobalKey<FormState>();
  String gender = 'male';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // ************** Patient Name ************
          Text("Patient Name",
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
          Text("Contact Number",
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

          // ******************* Location ****************

          Text("Where do you Live?",
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

          // ***************** Gender ********************
          Text("What's your Gender?",
              style: TextStyle(color: Colors.black, fontSize: 18.0)),
          Row(
            children: [
              Radio(
                  value: 'male',
                  groupValue: gender,
                  onChanged: (val) {
                    setState(() {
                      print(gender = val);
                    });
                  }),
              Text('Male', style: TextStyle(fontSize: 18.0)),
              SizedBox(width: 20.0),
              Radio(
                  value: 'female',
                  groupValue: gender,
                  onChanged: (val) {
                    setState(() {
                      print(gender = val);
                    });
                  }),
              Text('Female', style: TextStyle(fontSize: 18.0)),
            ],
          ),

          // ******************* Age ****************
          SizedBox(height: 10.0),
          Text("What's your Age?",
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
