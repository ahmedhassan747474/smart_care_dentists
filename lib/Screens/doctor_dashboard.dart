import 'package:flutter/material.dart';
import 'package:smart_care_dentists/Model/my_patient.dart';
import 'package:smart_care_dentists/Screens/drawer.dart';
import 'package:smart_care_dentists/Screens/upcoming_screen.dart';

class DoctorDashboard extends StatefulWidget {
  @override
  _DoctorDashboardState createState() => _DoctorDashboardState();
}

class _DoctorDashboardState extends State<DoctorDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Smart Care Dentist',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      drawer: CustomDrawer(),
      body: Container(
        child: Column(
          children: [
            // *************** Upcoming ******************
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 140,
                  height: 100,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              UpcomingScreen(text: 'Upcoming Appointments')));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.grey[200],
                      elevation: 12,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'Assets/appointment.png',
                            width: 40,
                            height: 40,
                          ),
                          Text(
                            'Upcoming',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 25.0),

                //*************** Finance **********/
                Container(
                  width: 140,
                  height: 100,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.grey[200],
                    elevation: 24,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'Assets/accounting.png',
                          width: 40,
                          height: 40,
                        ),
                        Text(
                          'Finance',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600),
                        ),
                        //
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
              child: Text('Today\'s Appointments',
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600)),
            ),

            // **************** Patient List ******************
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                child: MyPatients(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
