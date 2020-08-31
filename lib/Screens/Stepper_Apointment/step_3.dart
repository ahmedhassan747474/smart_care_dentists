import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UploadFiles extends StatefulWidget {
  @override
  _UploadFilesState createState() => _UploadFilesState();
}

class _UploadFilesState extends State<UploadFiles> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Upload Image here (Optional)",
              style: TextStyle(color: Colors.black, fontSize: 18.0)),
          SizedBox(height: 8.0),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.teal)),
                child: _image != null
                    ? Image.file(_image)
                    : InkWell(
                        child: Icon(MdiIcons.imagePlus),
                        onTap: () {
                          getImage();
                        },
                      ),
              ),
              SizedBox(width: 4.0),
              Container(
                width: 100,
                height: 100,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.teal)),
                child: _image != null
                    ? Image.file(_image)
                    : InkWell(
                        child: Icon(MdiIcons.imagePlus),
                        onTap: () {
                          getImage();
                        },
                      ),
              ),
              SizedBox(width: 4.0),
              Container(
                width: 100,
                height: 100,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.teal)),
                child: _image != null
                    ? Image.file(_image)
                    : InkWell(
                        child: Icon(MdiIcons.imagePlus),
                        onTap: () {
                          getImage();
                        },
                      ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text("Upload Test/Lab report File here (Optional)",
              style: TextStyle(color: Colors.black, fontSize: 18.0)),
          SizedBox(height: 8.0),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(border: Border.all(color: Colors.teal)),
            child: _image != null
                ? Image.file(_image)
                : InkWell(
                    child: Icon(MdiIcons.filePlus),
                    onTap: () {
                      getImage();
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
