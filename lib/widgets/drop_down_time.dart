import 'package:flutter/material.dart';

class DropDownTimeSlot extends StatefulWidget {
  @override
  _DropDownTimeSlotState createState() => _DropDownTimeSlotState();
}

class _DropDownTimeSlotState extends State<DropDownTimeSlot> {
  var _currentItemSelected = 'All Slots';

  var _slots = [
    'All Slots',
    'Slot 1:00 pm',
    'Slot 1:15 pm',
    'Slot 1:30 pm',
    'Slot 1:45 pm',
    'Slot 2:00 pm'
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
            items: _slots
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
