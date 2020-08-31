import 'package:flutter/material.dart';

class DropDownLocation extends StatefulWidget {
  @override
  _DropDownLocationState createState() => _DropDownLocationState();
}

class _DropDownLocationState extends State<DropDownLocation> {
  var _currentItemSelected = 'All Locations';
  var _locations = [
    'All Locations',
    'USA',
    'London',
    'Australia',
    'New York',
    'Lisbon',
    'Paris'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.teal),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            iconEnabledColor: Colors.teal,
            isExpanded: true,
            items: _locations
                .map((String dropDrownStringItems) => (DropdownMenuItem<String>(
                      value: dropDrownStringItems,
                      child: Text(
                        dropDrownStringItems,
                        style: TextStyle(color: Colors.black),
                      ),
                    )))
                .toList(),
            onChanged: (String newValueSelected) {
              setState(() {
                this._currentItemSelected = newValueSelected;
              });
            },
            value: _currentItemSelected,
          ),
        ),
      ),
    );
  }
}

// ********************* DropDown Doctors *****************
class DropDownSpeciality extends StatefulWidget {
  @override
  _DropDownSpecialityState createState() => _DropDownSpecialityState();
}

class _DropDownSpecialityState extends State<DropDownSpeciality> {
  var _currentItemSelected = 'All Doctors';
  var _doctors = [
    'All Doctors',
    'Dr. Smith',
    'Dr. James',
    'Dr. Jesica',
    'Dr. Alfred'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.teal),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            iconEnabledColor: Colors.teal,
            isExpanded: true,
            items: _doctors
                .map((String dropDrownStringItems) => (DropdownMenuItem<String>(
                      value: dropDrownStringItems,
                      child: Text(
                        dropDrownStringItems,
                        style: TextStyle(color: Colors.black),
                      ),
                    )))
                .toList(),
            onChanged: (String newValueSelected) {
              setState(() {
                this._currentItemSelected = newValueSelected;
              });
            },
            value: _currentItemSelected,
          ),
        ),
      ),
    );
  }
}
