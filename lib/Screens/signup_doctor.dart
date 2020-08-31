import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_care_dentists/Screens/doc_detail_form.dart';
import 'package:smart_care_dentists/Screens/login_doctor.dart';
import 'package:smart_care_dentists/Screens/signup_choose.dart';

class SignUpDoctor extends StatefulWidget {
  @override
  _SignUpDoctorState createState() => _SignUpDoctorState();
}

class _SignUpDoctorState extends State<SignUpDoctor> {
  final _formKey = GlobalKey<FormState>();

  // TextEditingController _emailTextController = TextEditingController();
  // TextEditingController _passwordTextController = TextEditingController();
  // TextEditingController _confirmPasswordController = TextEditingController();
  // TextEditingController _nameTextController = TextEditingController();
  String gender;
  String groupValue = "male";
  bool hidePass = true;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    // FlutterStatusbarcolor.setStatusBarColor(Colors.teal);
    // FlutterStatusbarcolor.setStatusBarWhiteForeground(false);

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => ChooseSignUp()));
          },
          child: Icon(
            Icons.arrow_back,
            size: 26.0,
          ),
        ),
        title: Text('Sign Up'),
      ),
      // ****** Keyboard does not overflow ********
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
            width: double.infinity,
            height: double.infinity,
          ),

          //************************** Top Logo ************************/
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              'Assets/doc.png',
              width: 100,
              height: 90,
            ),
          ),

          //******************* Text SignUpDoctor **********************/
          Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Center(
                  child: Form(
                key: _formKey,
                child: ListView(
                  children: <Widget>[
                    // ****************Name TextField****************
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: new TextField(
                        decoration: new InputDecoration(
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: new BorderSide(color: Colors.teal)),
                          filled: true,
                          hintText: 'Enter your Full Name',
                          helperText: 'i.e., Dr. Smith',
                          labelText: 'Name',
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.teal,
                          ),
                          // prefixText: ' ',
                        ),
                      ),
                    ),

                    // ****************Email TextField****************
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: new TextField(
                        decoration: new InputDecoration(
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: new BorderSide(color: Colors.teal)),
                          filled: true,
                          hintText: 'Enter your Email Address',
                          helperText: 'john123@Example.com',
                          labelText: 'Email',
                          prefixIcon: const Icon(
                            Icons.alternate_email,
                            color: Colors.teal,
                          ),
                          // prefixText: ' ',
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),

                    // ****************Phone TextField****************
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: new TextField(
                        decoration: new InputDecoration(
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: new BorderSide(color: Colors.teal)),
                          filled: true,
                          hintText: ' Enter your Contact Number',
                          helperText: '+123456789',
                          labelText: 'Phone',
                          prefixIcon: const Icon(
                            Icons.phone,
                            color: Colors.teal,
                          ),
                          prefixText: '+',
                        ),
                        maxLength: 15,
                        keyboardType: TextInputType.number,
                      ),
                    ),

                    // **************** Password TextField****************
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: new TextField(
                        decoration: new InputDecoration(
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: new BorderSide(color: Colors.teal)),
                          filled: true,
                          hintText: 'Enter a Password',
                          helperText: 'User Aplhabets, Numbers and Characters',
                          labelText: 'Password',
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            color: Colors.teal,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.teal,
                          ),
                          // prefixText: ' ',
                        ),
                        obscureText: hidePass,
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.fromLTRB(14.0, 0.0, 14.0, 0.0),
                    //   child: Row(
                    //     children: [
                    //       Text('I accept the'),
                    //       Text(
                    //         'Terms & Condition',
                    //         style: TextStyle(color: Colors.blue),
                    //       ),
                    //       Checkbox(value: true, onChanged: null),
                    //     ],
                    //   ),
                    // ),

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
                                      builder: (context) => DoctorDetailForm(
                                            text: 'Sign Up',
                                          )));
                            },
                            minWidth: MediaQuery.of(context).size.width,
                            child: Text(
                              "Continue",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          )),
                    ),

                    //*********** Login *****************/

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an Account? ',
                          textAlign: TextAlign.center,
                          // style: TextStyle(color: Colors.blue)
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginDoctor()));
                          },
                          child: Text(' Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.teal,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                    // ),
                  ],
                ),
              )),
            ),
          ),

          Visibility(
            visible: loading ?? true,
            child: Center(
              child: Container(
                alignment: Alignment.center,
                color: Colors.white.withOpacity(0.9),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ************ Method for Gender Radio *************
  valueChanged(e) {
    setState(() {
      if (e == "male") {
        groupValue = e;
        gender = e;
      } else if (e == "female") {
        groupValue = e;
        gender = e;
      }
    });
  }

  Future validateForm() async {
    // FormState formState = _formKey.currentState;

    // if (formState.validate()) {
    //   formState.reset();
    //   FirebaseUser user = await firebaseAuth.currentUser();
    //   if (user == null) {
    //     firebaseAuth
    //         .createUserWithEmailAndPassword(
    //             email: _emailTextController.text,
    //             password: _passwordTextController.text)
    //         .then((user) => {
    //               _userServices.createUser({
    //                 "username": _nameTextController.text,
    //                 "email": _emailTextController.text,
    //                 "userId": user.user.uid,
    //                 "gender": gender,
    //               })
    //             })
    //         .catchError((e) => {print(e.toString())});

    //     Navigator.pushReplacement(
    //         context, MaterialPageRoute(builder: (context) => HomePage()));
    //   }
    // }
  }
}
