import 'package:flutter/material.dart';
import 'package:smart_care_dentists/Model/doctors.dart';
import 'package:smart_care_dentists/Screens/NavigationPages/search_filter.dart';

import 'package:smart_care_dentists/widgets/catagory_selector.dart';
import 'package:smart_care_dentists/widgets/favourite.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SearchFilter _searchFilter = SearchFilter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        //**************** Profile IconButton ******************/
        leading: IconButton(
          icon: Icon(
            Icons.account_circle,
            size: 30.0,
          ),
          onPressed: () {},
        ),
        elevation: 0.0,
        title: Text('Smart Care Dentist',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600)),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: <Widget>[
          //****************** Search IconButton ****************/
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              _searchFilter.searchFilterBottomSheet(context);
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          //*********************** Catagories *****************/
          CatagorySelector(),

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: Column(
                children: <Widget>[
                  //*************** Favourite Setion **********/
                  Favourite(),

                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0))),
                      child: Doctor(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
