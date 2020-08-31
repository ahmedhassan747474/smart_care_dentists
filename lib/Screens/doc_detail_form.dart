import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:smart_care_dentists/Screens/doctor_dashboard.dart';
import 'package:smart_care_dentists/widgets/drop_down.dart';

class DoctorDetailForm extends StatefulWidget {
  final text;
  DoctorDetailForm({this.text});
  @override
  _DoctorDetailFormState createState() => _DoctorDetailFormState();
}

class _DoctorDetailFormState extends State<DoctorDetailForm> {
  final _formkey = GlobalKey<FormState>();
  String gender = 'male';
  bool enable = true;
  DateTime dateTime = new DateTime.now();
  String imgProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
          child: Column(
            children: [
              Text(
                'Complete your Profile',
                style: TextStyle(fontSize: 22.0),
              ),
              SizedBox(height: 4.0),
              Form(
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
                                backgroundImage:
                                    AssetImage('Assets/imgProfile.png')),
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

                    // ************** Location ************
                    SizedBox(height: 8.0),
                    DropDownLocation(),
                    // TextFormField(
                    //   enabled: enable,
                    //   validator: (value) {
                    //     if (value.isEmpty) {
                    //       return 'This Field can not be Empty';
                    //     }
                    //     if (value.length < 4) {
                    //       return 'Please Enter Full Name';
                    //     }
                    //     return null;
                    //   },
                    //   decoration: InputDecoration(
                    //       labelText: 'Your Location', hintText: 'England'),
                    // ),
                    // SizedBox(height: 10.0),
                    // ************** Expertise ************

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
                          labelText: 'Area 0f Expertise',
                          helperText:
                              'i.e., Generat Dentist/Oral Surgeon/Orthodontist',
                          hintText: 'Dentist'),
                    ),
                    SizedBox(height: 10.0),
                    // ************** Reg No. ************

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
                        labelText: 'Medical Council Registration No.',
                        // hintText: 'England'
                      ),
                    ),
                    SizedBox(height: 10.0),

                    Text('At least One', style: TextStyle(fontSize: 20.0)),

                    // ************** 1 Clinic/Private Practice *******************

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
                        labelText: '1). Clinic/Private Practice',
                        // helperText: '',
                        // hintText: ''
                      ),
                    ),
                    SizedBox(height: 10.0),

                    // ************** 2 Clinic/Private Practice *******************

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
                        labelText: '2). Clinic/Private Practice',
                        // helperText: '',
                        // hintText: ''
                      ),
                    ),
                    SizedBox(height: 10.0),

                    // ************** 3 Clinic/Private Practice *******************

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
                        labelText: '3). Clinic/Private Practice',
                        // helperText: '',
                        // hintText: ''
                      ),
                    ),
                    SizedBox(height: 10.0),

                    // ******************* Experience ****************

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
                          labelText: 'Your Experience', hintText: '10 Years'),
                    ),
                    SizedBox(height: 10.0),

                    // ***************** Gender ********************
                    Text("What's your Gender?",
                        style:
                            TextStyle(color: Colors.grey[600], fontSize: 18.0)),
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
                        style:
                            TextStyle(color: Colors.grey[700], fontSize: 18.0)),
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
                    // ******************* Language ****************

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
                          labelText: 'Language',
                          // helperText: '',
                          hintText: 'English/Spanish'),
                    ),
                    SizedBox(height: 10.0),
                    // ******************* fee ****************

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
                          labelText: 'Your Consultation Fee',
                          // helperText: '',
                          prefix: Text('\$'),
                          hintText: '10'),
                    ),
                    SizedBox(height: 10.0),

                    // ******************* Biography ****************

                    TextFormField(
                      enabled: enable,
                      maxLines: 10,
                      minLines: 1,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'This Field can not be Empty';
                        }
                        if (value.length < 4) {
                          return 'Please Enter Full Name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: 'Your Biography'),
                    ),
                    SizedBox(height: 10.0),

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
                          labelText: 'Who Referred You?', hintText: 'Dr. Smith'
                          // hintText: 'England'
                          ),
                    ),
                    SizedBox(height: 10.0),

                    // **************** Ref number ************
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
                        labelText: 'Referred Contact No.',
                        prefix: Text('+'),
                        // hintText: 'England'
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 10.0),
                    Text('Upload your Frank or Signature:',
                        style: TextStyle(fontSize: 18)),
                    SizedBox(height: 10.0),

                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: InkWell(
                        child: Icon(MdiIcons.imageEdit),
                      ),
                    ),
                    // SizedBox(height: 10.0),

                    // Terms & Condition
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 14.0, 0.0),
                      child: Row(
                        children: [
                          Text('I accept the'),
                          Text(
                            'Terms & Condition',
                            style: TextStyle(color: Colors.blue),
                          ),
                          Checkbox(
                            value: true,
                            onChanged: null,
                          ),
                        ],
                      ),
                    ),

                    // **************** Sign Up Button****************
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 0.0, 14.0, 14.0),
                      child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.teal,
                          elevation: 0.0,
                          child: MaterialButton(
                            onPressed: ()
                                // async
                                {
                              // validateForm();
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DoctorDashboard()));
                            },
                            minWidth: MediaQuery.of(context).size.width,
                            child: Text(
                              widget.text,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          )),
                    ),
                  ],
                ),
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
