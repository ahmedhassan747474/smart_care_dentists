import 'package:flutter/material.dart';
import 'package:smart_care_dentists/Model/patient_model.dart';
import 'package:smart_care_dentists/widgets/patient_cards.dart';

class UpcomingPatient extends StatefulWidget {
  @override
  _UpcomingPatientState createState() => _UpcomingPatientState();
}

class _UpcomingPatientState extends State<UpcomingPatient> {
  List<PatientModel> patientModel = [
    PatientModel(
        patientName: 'Safyian Mughal',
        patientAge: '21 Years',
        patientGender: 'Male',
        patientLocation: 'Pakistan',
        patientPicture: 'Assets/dp.jpg',
        patientAllergy: 'Not Any',
        patientPreviousDisease: 'Toothache',
        patientReasonConsultation: 'Bleeding gums when Blushing',
        patientLastTreatment: 'Since last 2months'),
    PatientModel(
        patientName: 'Safyian Mughal',
        patientAge: '21 Years',
        patientGender: 'Male',
        patientLocation: 'Pakistan',
        patientPicture: 'Assets/dp.jpg',
        patientAllergy: 'Not Any',
        patientPreviousDisease: 'Toothache',
        patientReasonConsultation: 'Bleeding gums when Blushing',
        patientLastTreatment: 'Since last 2months'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: patientModel
            .map((patient) => PatientCard(
                  patientModel: patient,
                ))
            .toList(),
      ),
    );
  }
}
