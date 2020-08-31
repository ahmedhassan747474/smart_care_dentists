import 'package:flutter/material.dart';
import 'package:smart_care_dentists/Screens/Stepper_Apointment/step_1.dart';
import 'package:smart_care_dentists/Screens/Stepper_Apointment/step_2.dart';
import 'package:smart_care_dentists/Screens/Stepper_Apointment/step_3.dart';
import 'package:smart_care_dentists/Screens/Stepper_Apointment/step_4.dart';

class AppointmentForm extends StatefulWidget {
  @override
  _AppointmentFormState createState() => _AppointmentFormState();
}

class _AppointmentFormState extends State<AppointmentForm> {
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text('Step 1'),
      content: Step1(),
      isActive: true,
    ),

    // ************ ******************
    Step(
      title: Text('Step 2'),
      content: Step2(),
      isActive: true,
    ),

    //****************  ************
    Step(
      title: Text('Step 3'),
      content: UploadFiles(),
      isActive: true,
    ),

    //****************  ************
    Step(
      title: Text('Step 4'),
      content: Payment(),
      isActive: true,
      state: StepState.complete,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Care Dentist'),
      ),
      body: Stepper(
          currentStep: current_step,
          steps: steps,
          type: StepperType.vertical,
          onStepTapped: (value) {
            setState(() {
              current_step = value;
            });
          },
          onStepContinue: () {
            setState(() {
              if (current_step < steps.length - 1) {
                current_step = current_step + 1;
              } else {
                current_step = 0;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (current_step > 0) {
                current_step = current_step - 1;
              } else {
                current_step = 0;
              }
            });
          }),
    );
  }
}
