import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PersonalDetailForm extends StatefulWidget {
  @override
  _PersonalDetailFormState createState() => _PersonalDetailFormState();
}

class _PersonalDetailFormState extends State<PersonalDetailForm> {
  final _formkey = GlobalKey<FormState>();
  String gender = 'male';
  bool enable = true;
  DateTime dateTime = new DateTime.now();
  String imgProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
      ),
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // ***************** Edit Detail Button ****************
              Container(
                  alignment: Alignment.center,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 80.0,
                          backgroundImage: AssetImage('Assets/imgProfile.png')),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: InkWell(
                          onTap: () {
                            print('Edit');
                          },
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )),
              // ************** Your Name ************
              Text("What's your Name?",
                  style: TextStyle(color: Colors.grey[600], fontSize: 18.0)),
              TextFormField(
                enabled: enable,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'This Field can not be Empty';
                  }
                  if (value.length < 4) {
                    return 'Please Enter Full Name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    // labelText: 'Your Name',
                    helperText: 'i.e., John Wick',
                    hintText: 'John Wick'),
              ),
              SizedBox(height: 10.0),

              // ************** Contact Number *******************
              Text("What's your Contact Number?",
                  style: TextStyle(color: Colors.grey[600], fontSize: 18.0)),
              TextFormField(
                enabled: enable,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'This Field can not be Empty';
                  }
                  if (value.length < 4) {
                    return 'Please Enter Full Name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    // labelText: 'Your Contact Number',
                    // helperText: '+123456789',
                    hintText: '+92123456789'),
              ),
              SizedBox(height: 10.0),

              // ******************* Location ****************

              Text("Where do you Live?",
                  style: TextStyle(color: Colors.grey[700], fontSize: 18.0)),
              TextFormField(
                enabled: enable,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'This Field can not be Empty';
                  }
                  if (value.length < 4) {
                    return 'Please Enter Full Name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: 'Your City/State', hintText: '+92123456789'),
              ),
              SizedBox(height: 10.0),

              // ***************** Gender ********************
              Text("What's your Gender?",
                  style: TextStyle(color: Colors.grey[600], fontSize: 18.0)),
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

              // ******************* Date of Birth ****************
              SizedBox(height: 10.0),
              Text("When were you Born?",
                  style: TextStyle(color: Colors.grey[700], fontSize: 18.0)),
              SizedBox(height: 12.0),
              RaisedButton(
                  color: Colors.grey[50],
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.teal,
                          width: 2.0),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Text("Select"),
                  onPressed: () {}
                  //  () async {
                  //   final selectedDate = await buildShowDatePicker(context);
                  //   print(selectedDate);}
                  ),
            ],
          ),
        ),
      ),
    );
  }

  Future<DateTime> buildShowDatePicker(BuildContext context) {
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1920),
      lastDate: DateTime(2020),
    );
  }
}
