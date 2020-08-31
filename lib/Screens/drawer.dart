import 'package:flutter/material.dart';
import 'package:smart_care_dentists/Screens/add_new_patient.dart';
import 'package:smart_care_dentists/Screens/doc_detail_form.dart';
import 'package:smart_care_dentists/Screens/signup_choose.dart';
import 'package:smart_care_dentists/Screens/upcoming_screen.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('Jesica@gmail.com'),
              accountName: Text('Dr. Jesica'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.teal),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.teal,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DoctorDetailForm(text: 'Save')));
              },
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.teal),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Finance'),
                leading: Icon(Icons.account_balance, color: Colors.teal),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AddNewPatient()));
              },
              child: ListTile(
                title: Text('Add New Patient'),
                leading: Icon(Icons.person_add, color: Colors.teal),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UpcomingScreen(
                              text: 'Patient History',
                            )));
              },
              child: ListTile(
                title: Text('Patient History'),
                leading: Icon(Icons.history, color: Colors.teal),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => ChooseSignUp()));
              },
              child: ListTile(
                title: Text('Log Out'),
                leading: Icon(
                  Icons.exit_to_app,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
