import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:smart_care_dentists/Screens/signup.dart';
import 'package:smart_care_dentists/widgets/main_screen.dart';
import 'package:flutter/gestures.dart' show DragStartBehavior;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
      // ****** Keyboard does not overflow ********
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.white,
              width: double.infinity,
              height: double.infinity,
            ),

            //********************* Top Screen *******************/
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 10),
              child: Image.asset(
                'Assets/onboard3.png',
                width: 130,
                height: 120,
              ),
            ),

            // **************** Login TextField *******************
            Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 125.0),
                child: Center(
                    child: Form(
                  key: _formKey,
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 14.0, bottom: 16.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.teal[600],
                              fontSize: 26,
                              fontFamily: 'IbmPlex',
                              fontWeight: FontWeight.w600),
                        ),
                      ),

                      // **************** Email TextField****************
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: new TextField(
                          decoration: new InputDecoration(
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: new BorderSide(color: Colors.teal)),
                            filled: true,
                            hintText: 'Enter your Email Address',
                            // helperText: 'john123@Example.com',
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

                      // **************** Password TextField****************
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: new TextField(
                          decoration: new InputDecoration(
                              fillColor: Colors.white,
                              border: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide:
                                      new BorderSide(color: Colors.teal)),
                              filled: true,
                              hintText: 'Enter a Password',
                              helperText: ' ',
                              labelText: 'Password',
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                color: Colors.teal,
                              ),
                              suffixIcon: GestureDetector(
                                dragStartBehavior: DragStartBehavior.down,
                                onTap: () {
                                  setState(() {
                                    hidePass = !hidePass;
                                  });
                                },
                                child: Icon(
                                  hidePass
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              )
                              // prefixText: ' ',
                              ),
                          obscureText: hidePass,
                        ),
                      ),

                      // **************** Login Button****************
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(14.0, 0.0, 14.0, 8.0),
                        child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.teal,
                            elevation: 0.0,
                            child: MaterialButton(
                              onPressed: ()
                                  // async
                                  {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MainHomeScreen()));
                                // validateForm();
                              },
                              minWidth: MediaQuery.of(context).size.width,
                              child: Text(
                                "Login",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            )),
                      ),

                      SizedBox(height: 20),

                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 2,
                              height: 10,
                              indent: 20,
                              endIndent: 20,
                            ),
                          ),
                          Text('OR'),
                          Expanded(
                            child: Divider(
                              thickness: 2,
                              height: 10,
                              indent: 20,
                              endIndent: 20,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),

                      // ******************* Signin with Google **************
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(14.0, 4.0, 14.0, 8.0),
                        child: GoogleSignInButton(
                          onPressed: () {/* ... */},
                          splashColor: Colors.white,
                          darkMode: false, // default: false
                          borderRadius: 10.0,
                        ),
                      ),

                      // ***************** Signin with Facebook **************
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

            //*********** SignUp Link *****************/
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an Account? ',
                    textAlign: TextAlign.center,
                    // style: TextStyle(color: Colors.blue)
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignUP()));
                    },
                    child: Text(' Sign Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.teal,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
          ],
        ),
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

//   Future validateForm() async {
//     FormState formState = _formKey.currentState;
//   }
}
