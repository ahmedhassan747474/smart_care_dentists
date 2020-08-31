import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class OverviewTabPatient extends StatelessWidget {
  final loc;
  final reason;
  final age;
  final gender;
  final preDisease;
  final allergy;
  final lastTreat;

  OverviewTabPatient(
      {this.age,
      this.allergy,
      this.gender,
      this.lastTreat,
      this.loc,
      this.preDisease,
      this.reason});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 4.0, 12.0, 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ************ AGE , GENDER , LOCATION **********
          Expanded(
            child: Row(
              children: [
                Text(
                  'Age:',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 4.0),
                Text(
                  age,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),

          // ************** Gender ********************
          Expanded(
              child: Row(
            children: [
              Text(
                'Gender:',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 4.0),
              Text(
                gender,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
              ),
            ],
          )),

          // ************** Location ********************
          Expanded(
              child: Row(
            children: [
              Text(
                'Location:',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 4.0),
              Text(
                loc,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
              ),
            ],
          )),

          // *************** Reason *******************
          Expanded(
            child: Row(
              children: [
                Text(
                  'Reason:',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 4.0),
                Text(
                  reason,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),

          // ************ Pre Disease ***************

          Expanded(
            child: Row(
              children: [
                Text(
                  'Past Disease:',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 4.0),
                Text(
                  preDisease,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),

          // *************** Allergy *******************
          Expanded(
            child: Row(
              children: [
                Text(
                  'Allergy:',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 4.0),
                Text(
                  allergy,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),

          // *************** treatment *******************
          Expanded(
            child: Row(
              children: [
                Text(
                  'Last treatment:',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 4.0),
                Text(
                  lastTreat,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),

          // // *************** About *******************
          // Expanded(
          //   child: Row(
          //     children: [
          //       Icon(
          //         MdiIcons.googleTranslate,
          //         color: Colors.teal,
          //         size: 36,
          //       ),
          //       SizedBox(width: 12.0),
          //       Text(
          //         lang,
          //         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
