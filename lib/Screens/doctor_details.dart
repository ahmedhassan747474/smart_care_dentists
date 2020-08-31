import 'package:flutter/material.dart';
import 'package:smart_care_dentists/Screens/TabPages/availability.dart';
import 'package:smart_care_dentists/Screens/TabPages/overview_doc.dart';
import 'package:smart_care_dentists/Screens/form_appointment.dart';

class DoctorDetails extends StatefulWidget {
  final doctorName;
  final doctorImg;
  final doctorDetail;
  final doctorDesignation;
  final doctorLocation;
  final doctorLang;
  final doctorEdu;
  final doctorExp;
  final drFee;

  DoctorDetails(
      {this.doctorName,
      this.doctorDesignation,
      this.doctorImg,
      this.doctorDetail,
      this.doctorLocation,
      this.doctorLang,
      this.doctorEdu,
      this.doctorExp,
      this.drFee});

  @override
  _DoctorDetailsState createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails>
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
                        backgroundImage: AssetImage(widget.doctorImg),
                        radius: 65,
                      ),
                    ),

                    // ****************** Text Doctor Name ******************
                    Padding(
                      padding: EdgeInsets.only(bottom: 6.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          widget.doctorName,
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
                        Tab(text: '   Availability   '),
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
                        OverviewTab(
                          title: widget.doctorDesignation,
                          experience: widget.doctorExp,
                          education: widget.doctorEdu,
                          location: widget.doctorLocation,
                          language: widget.doctorLang,
                          about: widget.doctorDetail,
                          fee: widget.drFee,
                        ),
                        AvailabilityTab(),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AppointmentForm()),
                        );
                      },
                      enableFeedback: true,
                      minWidth: MediaQuery.of(context).size.width,
                      child: Text(
                        "Book an Appointment",
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
