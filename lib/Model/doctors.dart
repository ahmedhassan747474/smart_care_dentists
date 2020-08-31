import 'package:flutter/material.dart';
import 'package:smart_care_dentists/Model/doc_model.dart';

import 'package:smart_care_dentists/widgets/doctor_cards.dart';

class Doctor extends StatefulWidget {
  @override
  _DoctorState createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  List<DocModel> docModels = [
    DocModel(
        docName: 'Dr. Smith',
        docLocation: 'USA',
        docFee: '50',
        docTitle: 'Dentist',
        docLanguage: 'English',
        docPicture: 'Assets/doctor.jpg',
        docBiography:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
        docEducation: 'Doctor of Dental Surgery',
        docExperience: '2 Years'),
    DocModel(
        docName: 'Dr. James',
        docLocation: 'London',
        docFee: '50',
        docLanguage: 'English',
        docTitle: 'Dentist',
        docPicture: 'Assets/doctorr.jpg',
        docBiography:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
        docEducation: 'Doctor of Dental Surgery',
        docExperience: '2 Years'),
    DocModel(
        docName: 'Dr. Jesica',
        docLocation: 'USA',
        docFee: '50',
        docLanguage: 'English, French',
        docTitle: 'Dentist',
        docPicture: 'Assets/doctorrr.jpg',
        docBiography:
            'Dr. Jesica has been in Dental Practice for over 10 years and has special interests in Complex Dental Care, including reconstructive and Asthetic Dentistry, Oral Surgery and Implant dentistry and also the management of anxious and medically compromised patients. She is a Senior Clinical Lecturer for the Faculty of Dentry University of California and is an Instructor and mentor for the training of Dentists in Dental Implant Therapy.',
        docEducation: 'Doctor of Dental Surgery',
        docExperience: '10 Years'),
    DocModel(
        docName: 'Dr. Alfred',
        docLocation: 'Paris',
        docFee: '50',
        docLanguage: 'English',
        docTitle: 'Dentist',
        docPicture: 'Assets/happydoctor.jpg',
        docBiography:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
        docEducation: 'Doctor of Dental Surgery',
        docExperience: '2 Years'),
    DocModel(
        docName: 'Dr. Smith',
        docLocation: 'Italy',
        docFee: '50',
        docLanguage: 'English, Dutch',
        docTitle: 'Orthodontist',
        docPicture: 'Assets/happydoctor.jpg',
        docBiography:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
        docEducation: 'Doctor of Dental Surgery',
        docExperience: '2 Years'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: docModels
            .map((doc) => DoctorCard(
                  docModel: doc,
                ))
            .toList(),
      ),
    );
  }
}
