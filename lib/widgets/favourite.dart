import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
// ************ Favourite Doctors ************
  var favDoc = [
    {
      'name': 'Dr. Alfred',
      'location': 'Paris',
      'title': 'Dentist',
      'picture': 'Assets/happydoctor.jpg'
    },
    {
      'name': 'Dr. James',
      'location': 'London',
      'title': 'Dentist',
      'picture': 'Assets/doctorr.jpg'
    },
    {
      'name': 'Dr. Jesica',
      'location': 'USA',
      'title': 'Dentist',
      'picture': 'Assets/doctorrr.jpg'
    },
    {
      'name': 'Dr. Alfred',
      'location': 'Paris',
      'title': 'Dentist',
      'picture': 'Assets/happydoctor.jpg'
    },
    {
      'name': 'Dr. Smith',
      'location': 'USA',
      'title': 'Dentist',
      'picture': 'Assets/doctor.jpg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Favourite',
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold)),
              IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    size: 30.0,
                    color: Colors.teal,
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
        Container(
          height: 95.0,
          child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favDoc.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(favDoc[index]['picture']),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        favDoc[index]['name'],
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
