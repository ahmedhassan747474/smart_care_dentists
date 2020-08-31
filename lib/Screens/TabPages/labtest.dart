import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LabTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Patient Images',
            style: TextStyle(color: Colors.black, fontSize: 22.0),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.teal)),
                child: Icon(MdiIcons.imagePlus),
              ),
              SizedBox(width: 4.0),
              Container(
                width: 100,
                height: 100,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.teal)),
                child: Icon(MdiIcons.imagePlus),
              ),
              SizedBox(width: 4.0),
              Container(
                width: 100,
                height: 100,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.teal)),
                child: Icon(MdiIcons.imagePlus),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text("Test/Lab report File",
              style: TextStyle(color: Colors.black, fontSize: 22.0)),
          SizedBox(height: 8.0),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(border: Border.all(color: Colors.teal)),
            child: Icon(MdiIcons.filePdf),
          ),
        ],
      ),
    );
  }
}
