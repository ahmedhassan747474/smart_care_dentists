import 'package:flutter/material.dart';
import 'package:smart_care_dentists/Model/patient_model.dart';
import 'package:smart_care_dentists/Screens/patient_details.dart';

class PatientCard extends StatelessWidget {
  final PatientModel patientModel;
  PatientCard({this.patientModel});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => (PatientDetails(
            patName: patientModel.patientName,
            patAge: patientModel.patientAge,
            patLoc: patientModel.patientLocation,
            patPreDisease: patientModel.patientPreviousDisease,
            patAllergy: patientModel.patientAllergy,
            patLasTreat: patientModel.patientLastTreatment,
            patPic: patientModel.patientPicture,
            patGender: patientModel.patientGender,
            patReason: patientModel.patientReasonConsultation,
          )),
        ));
      },
      child: Card(
        color: Colors.grey[100],
        margin: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 35.0,
                backgroundImage: AssetImage(patientModel.patientPicture),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 2.0),
                    child: Text(
                      'Patient: ${patientModel.patientName}',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 2.0),
                    child: Text(
                        'Reason: ${patientModel.patientReasonConsultation}',
                        style: TextStyle(fontSize: 16.0),
                        overflow: TextOverflow.fade,
                        softWrap: false),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                    child: Text(
                      patientModel.patientLocation,
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
