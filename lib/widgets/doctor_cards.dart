import 'package:flutter/material.dart';
import 'package:smart_care_dentists/Model/doc_model.dart';
import 'package:smart_care_dentists/Screens/doctor_details.dart';

class DoctorCard extends StatelessWidget {
  final DocModel docModel;
  DoctorCard({this.docModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => (DoctorDetails(
            doctorName: docModel.docName,
            doctorDesignation: docModel.docTitle,
            doctorImg: docModel.docPicture,
            doctorDetail: docModel.docBiography,
            doctorLocation: docModel.docLocation,
            doctorLang: docModel.docLanguage,
            doctorEdu: docModel.docEducation,
            doctorExp: docModel.docExperience,
            drFee: docModel.docFee,
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
                backgroundImage: AssetImage(docModel.docPicture),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 2.0),
                    child: Text(
                      docModel.docName,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 2.0),
                    child: Text(
                      docModel.docTitle,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                    child: Text(
                      docModel.docLocation,
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
    // );
  }
}
