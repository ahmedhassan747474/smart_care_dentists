import 'package:flutter/material.dart';
import 'package:smart_care_dentists/Screens/TabPages/labtest.dart';
import 'package:smart_care_dentists/Screens/TabPages/overview_patient.dart';

class PatientDetails extends StatefulWidget {
  final patName;
  final patAge;
  final patLoc;
  final patReason;
  final patAllergy;
  final patLasTreat;
  final patPic;
  final patPreDisease;
  final patGender;

  PatientDetails(
      {this.patName,
      this.patAge,
      this.patLoc,
      this.patAllergy,
      this.patGender,
      this.patLasTreat,
      this.patPic,
      this.patPreDisease,
      this.patReason});
  @override
  _PatientDetailsState createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.26,
            flexibleSpace: FlexibleSpaceBar(
              background: SafeArea(
                child: Stack(
                  children: [
                    // *************** Background Image ***************
                    Container(
                      height: MediaQuery.of(context).size.height * 0.26,
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                        image: AssetImage('Assets/doodle.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.26,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black.withOpacity(0.8),
                    ),

                    // ************ Circle Image Doctor **************
                    Container(
                      margin: EdgeInsets.only(top: 8.0),
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(widget.patPic),
                        radius: 65,
                      ),
                    ),

                    // ****************** Text Doctor Name ******************
                    Padding(
                      padding: EdgeInsets.only(bottom: 6.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          widget.patName,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 26.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                // *********** TabBar ****************
                Container(
                  color: Colors.white,
                  child: TabBar(
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.black,
                      indicatorColor: Colors.red,
                      indicatorSize: TabBarIndicatorSize.label,
                      controller: tabController,
                      // ******** TabBar Text **********
                      tabs: [
                        Tab(text: '   Overview   '),
                        Tab(text: '   Lab Test   '),
                      ]),
                ),

                // *************** TabView Content **************
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        OverviewTabPatient(
                          age: widget.patAge,
                          loc: widget.patLoc,
                          gender: widget.patGender,
                          reason: widget.patReason,
                          lastTreat: widget.patLasTreat,
                          preDisease: widget.patPreDisease,
                          allergy: widget.patAllergy,
                        ),
                        LabTest(),
                      ],
                    ),
                  ),
                ),

                // ************** Book Button ****************
                Material(
                    color: Colors.teal,
                    elevation: 0.0,
                    child: MaterialButton(
                      onPressed: () {
                        // validateAppointment(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => AppointmentForm()),
                        // );
                      },
                      enableFeedback: true,
                      minWidth: MediaQuery.of(context).size.width,
                      child: Text(
                        "Start Consultation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                    )),
              ],
            ),

            //888888
          ),
        ],
      ),
    );
  }
}
