import 'package:flutter/material.dart';
import 'package:smart_care_dentists/Screens/signup.dart';
import 'package:smart_care_dentists/Screens/signup_doctor.dart';

class ChooseSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ************ Logo Image ***************
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                child: Image(
                  image: AssetImage('Assets/teeth.png'),
                  width: 120,
                  height: 120,
                ),
              ),
            ),

            // ************ Text below Logo ********
            Text(
              'Smart Care Dentist',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            ),
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            )),

                        // ********** ****************
                        child: Column(
                          children: [
                            SizedBox(height: 12.0),

                            //************ Registration ***********/
                            Text('Registration',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.w600)),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.60,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //**************** Health News *************/
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 140,
                                        height: 100,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          color: Colors.grey[200],
                                          elevation: 12,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'Assets/healthnews.png',
                                                width: 50,
                                                height: 50,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Health',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    'News',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                      SizedBox(width: 25.0),

                                      //*************** Chat Bot **********/
                                      Container(
                                        width: 140,
                                        height: 100,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          color: Colors.grey[200],
                                          elevation: 12,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'Assets/faq.png',
                                                width: 80,
                                                height: 80,
                                              ),
                                              //
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  //**************** Doctor Text ***********/
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image.asset('Assets/doctor.png',
                                            width: 60, height: 50),
                                        Text('Are you a Dentist?',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                  ),

                                  // ********* Get Register Button *********
                                  Container(
                                    width: 300,
                                    child: RaisedButton(
                                      elevation: 8.0,
                                      color: Colors.teal,
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignUpDoctor()));
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(80.0)),
                                      padding: const EdgeInsets.all(0.0),
                                      child: Text(
                                        'Get Register',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0),
                                      ),
                                    ),
                                  ),

                                  // ********* Patient Text **********
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image.asset('Assets/patient.png',
                                            width: 60, height: 50),
                                        Text('Are you a Patient?',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                  ),

                                  // ************ Get Consultation ***************
                                  Container(
                                    width: 300,
                                    child: RaisedButton(
                                      elevation: 8.0,
                                      color: Colors.teal,
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignUP()));
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(80.0)),
                                      padding: const EdgeInsets.all(0.0),
                                      child: Text(
                                        'Get Consultation',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
