import 'package:flutter/material.dart';
import 'package:smart_care_dentists/widgets/drop_down.dart';
import 'package:smart_care_dentists/widgets/drop_down_time.dart';

class SearchFilter {
  void searchFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            color: Color(0xFF737373),
            child: BuildFilterSheet(),
          );
        });
  }
}

class BuildFilterSheet extends StatefulWidget {
  const BuildFilterSheet({
    Key key,
  }) : super(key: key);

  @override
  _BuildFilterSheetState createState() => _BuildFilterSheetState();
}

class _BuildFilterSheetState extends State<BuildFilterSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0)),
      ),
      height: MediaQuery.of(context).size.height * .45,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 8.0, bottom: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //***************** Clear  **************/
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Clear'.toUpperCase(),
                    style: TextStyle(color: Colors.teal, fontSize: 16.0),
                  ),
                ),

                //************* Search Filter Text ***************/
                Text('Search Filter',
                    style: TextStyle(color: Colors.black, fontSize: 18.0)),

                //*************** Cancel Icon ***************/
                IconButton(
                    icon: Icon(Icons.cancel, color: Colors.teal, size: 25),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ],
            ),
            // *************** Location DropDown ***************
            Text('select a location'.toUpperCase(),
                style: TextStyle(fontSize: 14.0)),

            SizedBox(height: 8.0),

            Expanded(child: DropDownLocation()),
            SizedBox(height: 8.0),
            // *************** Doctor DropDown ***************
            Text('select a Doctor'.toUpperCase(),
                style: TextStyle(fontSize: 14.0)),
            SizedBox(height: 8.0),
            Expanded(child: DropDownSpeciality()),
            SizedBox(height: 8.0),

            // *************** Availiabity DropDown ***************
            Text('select an Availiability'.toUpperCase(),
                style: TextStyle(fontSize: 14.0)),

            SizedBox(height: 8.0),
            Expanded(child: DropDownTimeSlot()),
            SizedBox(height: 5.0),

            // *************** Apply Button ***************
            Expanded(
              child: Center(
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Apply',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.teal,
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
