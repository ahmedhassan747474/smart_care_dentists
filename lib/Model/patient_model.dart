class PatientModel {
  String patientName,
      patientLocation,
      patientPicture,
      patientGender,
      patientAge,
      patientReasonConsultation,
      patientPreviousDisease,
      patientLastTreatment,
      patientAllergy,
      patientImageFile,
      patientLabTestFile;

  PatientModel(
      {this.patientName,
      this.patientLocation,
      this.patientPicture,
      this.patientGender,
      this.patientAge,
      this.patientReasonConsultation,
      this.patientPreviousDisease,
      this.patientLastTreatment,
      this.patientAllergy,
      this.patientImageFile,
      this.patientLabTestFile});
}
