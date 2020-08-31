import 'package:flutter/material.dart';

class CatagorySelector extends StatefulWidget {
  @override
  _CatagorySelectorState createState() => _CatagorySelectorState();
}

class _CatagorySelectorState extends State<CatagorySelector> {
  int selectedIndex = 0;
  final List<String> catagories = [
    'Orthodontist',
    'Oral Surgeon',
    'Periodontist',
    'Dental Specialists'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.teal,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catagories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 15.0),
                child: Text(
                  catagories[index],
                  style: TextStyle(
                      color: index == selectedIndex
                          ? Colors.white
                          : Colors.white38,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                      fontSize: 22.0),
                ),
              ),
            );
          }),
    );
  }
}
