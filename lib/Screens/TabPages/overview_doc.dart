import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class OverviewTab extends StatelessWidget {
  final title;
  final education;
  final location;
  final experience;
  final language;
  final about;
  final fee;
  OverviewTab(
      {this.title,
      this.location,
      this.language,
      this.experience,
      this.education,
      this.about,
      this.fee});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 4.0, 12.0, 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ************ designation **********
          Expanded(
            child: Row(
              children: [
                Icon(
                  MdiIcons.medicalBag,
                  color: Colors.teal,
                  size: 36,
                ),
                SizedBox(width: 12.0),
                Text(
                  title,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(
                  MdiIcons.currencyUsd,
                  color: Colors.teal,
                  size: 32,
                ),
                Text(
                  fee,
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  ' Consultation fee',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
                Spacer(),
              ],
            ),
          ),

          // *************** Experience *******************
          Expanded(
            child: Row(
              children: [
                Icon(
                  MdiIcons.cardAccountDetailsOutline,
                  color: Colors.teal,
                  size: 36,
                ),
                SizedBox(width: 12.0),
                Text(
                  experience,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),

          // ************ Education ***************

          Expanded(
            child: Row(
              children: [
                Icon(
                  MdiIcons.schoolOutline,
                  color: Colors.teal,
                  size: 36,
                ),
                SizedBox(width: 12.0),
                Text(
                  education,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),

          // *************** Location *******************
          Expanded(
            child: Row(
              children: [
                Icon(
                  MdiIcons.googleMaps,
                  color: Colors.teal,
                  size: 36,
                ),
                SizedBox(width: 12.0),
                Text(
                  location,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),

          // *************** Language *******************
          Expanded(
            child: Row(
              children: [
                Icon(
                  MdiIcons.googleTranslate,
                  color: Colors.teal,
                  size: 36,
                ),
                SizedBox(width: 12.0),
                Text(
                  language,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),

          // *************** About *******************
          Expanded(
            flex: 3,
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    MdiIcons.informationOutline,
                    color: Colors.teal,
                    size: 36,
                  ),
                  SizedBox(width: 12.0),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      about,
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                      textAlign: TextAlign.justify,
                      maxLines: 10,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
