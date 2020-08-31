import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_care_dentists/Screens/payment_bottom_sheet.dart';

class AvailabilityTab extends StatefulWidget {
  @override
  _AvailabilityTabState createState() => _AvailabilityTabState();
}

bool isClickedSlot1 = false;
bool isClickedSlot2 = false;
bool isClickedSlot3 = false;
bool isClickedSlot4 = false;
bool isClickedSlot5 = false;
bool isClickedSlot6 = false;
bool isClickedSlot7 = false;
bool isClickedSlot8 = false;
bool isClickedSlot9 = false;
// ******* Day *********
bool isClickedMon = false;
bool isClickedTue = false;
bool isClickedWed = false;
bool isClickedThu = false;
bool isClickedFri = false;
bool isClickedSat = false;
bool isClickedSun = false;

Color selectedTextTime = Colors.white;
Color textColorTime = Colors.black;
Color selectedTextDay = Colors.white;
Color textColorDay = Colors.black;
Color selectedBackgroundTime = Colors.red;
Color backgroundTime = Colors.white;
Color selectedBackgroundDay = Colors.teal;
Color backgroundDay = Colors.white;

class _AvailabilityTabState extends State<AvailabilityTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            'Available Time Slots',
            style: TextStyle(fontSize: 20.0),
          ),
          Row(
            children: [
              Spacer(),

              // *********** First Slot *****************
              InkWell(
                onTap: () {
                  setState(() {
                    isClickedSlot1 = !isClickedSlot1;
                    if (isClickedSlot1) {
                      isClickedSlot2 = false;
                      isClickedSlot3 = false;
                      isClickedSlot4 = false;
                      isClickedSlot5 = false;
                      isClickedSlot6 = false;
                      isClickedSlot7 = false;
                      isClickedSlot8 = false;
                      isClickedSlot9 = false;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.red[500],
                      ),
                      color: isClickedSlot1
                          ? selectedBackgroundTime
                          : backgroundTime,
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  child: Text(
                    '21:00',
                    style: TextStyle(
                        color:
                            isClickedSlot1 ? selectedTextTime : textColorTime),
                  ),
                ),
              ),
              SizedBox(width: 4.0),

              // *********** 2nd Slot *****************
              InkWell(
                onTap: () {
                  setState(() {
                    isClickedSlot2 = !isClickedSlot2;
                    if (isClickedSlot2) {
                      isClickedSlot1 = false;
                      isClickedSlot3 = false;
                      isClickedSlot4 = false;
                      isClickedSlot5 = false;
                      isClickedSlot6 = false;
                      isClickedSlot7 = false;
                      isClickedSlot8 = false;
                      isClickedSlot9 = false;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: Colors.red[500],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    color: isClickedSlot2
                        ? selectedBackgroundTime
                        : backgroundTime,
                  ),
                  child: Text(
                    '21:00',
                    style: TextStyle(
                        color:
                            isClickedSlot2 ? selectedTextTime : textColorTime),
                  ),
                ),
              ),
              SizedBox(width: 4.0),

              // ************* 3rd Slot **************
              InkWell(
                onTap: () {
                  setState(() {
                    isClickedSlot3 = !isClickedSlot3;
                    if (isClickedSlot3) {
                      isClickedSlot1 = false;
                      isClickedSlot2 = false;
                      isClickedSlot4 = false;
                      isClickedSlot5 = false;
                      isClickedSlot6 = false;
                      isClickedSlot7 = false;
                      isClickedSlot8 = false;
                      isClickedSlot9 = false;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.red[500],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      color: isClickedSlot3
                          ? selectedBackgroundTime
                          : backgroundTime),
                  child: Text(
                    '21:00',
                    style: TextStyle(
                        color:
                            isClickedSlot3 ? selectedTextTime : textColorTime),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),

          SizedBox(height: 8.0),

          // ***********  ********************
          Row(
            children: [
              Spacer(),

              // ************* 4th slot *************
              InkWell(
                onTap: () {
                  setState(() {
                    isClickedSlot4 = !isClickedSlot4;
                    if (isClickedSlot4) {
                      isClickedSlot1 = false;
                      isClickedSlot2 = false;
                      isClickedSlot3 = false;
                      isClickedSlot5 = false;
                      isClickedSlot6 = false;
                      isClickedSlot7 = false;
                      isClickedSlot8 = false;
                      isClickedSlot9 = false;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.red[500],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      color: isClickedSlot4
                          ? selectedBackgroundTime
                          : backgroundTime),
                  child: Text(
                    '21:00',
                    style: TextStyle(
                        color:
                            isClickedSlot4 ? selectedTextTime : textColorTime),
                  ),
                ),
              ),
              SizedBox(width: 4.0),

              // ************* 5th Slot *************
              InkWell(
                onTap: () {
                  setState(() {
                    isClickedSlot5 = !isClickedSlot5;
                    if (isClickedSlot5) {
                      isClickedSlot1 = false;
                      isClickedSlot2 = false;
                      isClickedSlot4 = false;
                      isClickedSlot3 = false;
                      isClickedSlot6 = false;
                      isClickedSlot7 = false;
                      isClickedSlot8 = false;
                      isClickedSlot9 = false;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.red[500],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      color: isClickedSlot5
                          ? selectedBackgroundTime
                          : backgroundTime),
                  child: Text(
                    '21:00',
                    style: TextStyle(
                        color:
                            isClickedSlot5 ? selectedTextTime : textColorTime),
                  ),
                ),
              ),
              SizedBox(width: 4.0),

              // *********** 6th Slot *************
              InkWell(
                onTap: () {
                  setState(() {
                    isClickedSlot6 = !isClickedSlot6;
                    if (isClickedSlot6) {
                      isClickedSlot1 = false;
                      isClickedSlot2 = false;
                      isClickedSlot4 = false;
                      isClickedSlot5 = false;
                      isClickedSlot3 = false;
                      isClickedSlot7 = false;
                      isClickedSlot8 = false;
                      isClickedSlot9 = false;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.red[500],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      color: isClickedSlot6
                          ? selectedBackgroundTime
                          : backgroundTime),
                  child: Text(
                    '21:00',
                    style: TextStyle(
                        color:
                            isClickedSlot6 ? selectedTextTime : textColorTime),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),

          SizedBox(height: 8.0),

          // *************  **************
          Row(
            children: [
              Spacer(),

              // ************ 7th Slot ***************
              InkWell(
                onTap: () {
                  setState(() {
                    isClickedSlot7 = !isClickedSlot7;
                    if (isClickedSlot7) {
                      isClickedSlot1 = false;
                      isClickedSlot2 = false;
                      isClickedSlot4 = false;
                      isClickedSlot5 = false;
                      isClickedSlot6 = false;
                      isClickedSlot3 = false;
                      isClickedSlot8 = false;
                      isClickedSlot9 = false;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.red[500],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      color: isClickedSlot7
                          ? selectedBackgroundTime
                          : backgroundTime),
                  child: Text(
                    '21:00',
                    style: TextStyle(
                        color:
                            isClickedSlot7 ? selectedTextTime : textColorTime),
                  ),
                ),
              ),
              SizedBox(width: 4.0),

              // ************* 8th Slot *************
              InkWell(
                onTap: () {
                  setState(() {
                    isClickedSlot8 = !isClickedSlot8;
                    if (isClickedSlot8) {
                      isClickedSlot1 = false;
                      isClickedSlot2 = false;
                      isClickedSlot4 = false;
                      isClickedSlot5 = false;
                      isClickedSlot6 = false;
                      isClickedSlot7 = false;
                      isClickedSlot3 = false;
                      isClickedSlot9 = false;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.red[500],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      color: isClickedSlot8
                          ? selectedBackgroundTime
                          : backgroundTime),
                  child: Text('21:00',
                      style: TextStyle(
                          color: isClickedSlot8
                              ? selectedTextTime
                              : textColorTime)),
                ),
              ),
              SizedBox(width: 4.0),

              // ********* 9th Slot ***************
              InkWell(
                onTap: () {
                  setState(() {
                    isClickedSlot9 = !isClickedSlot9;
                    if (isClickedSlot9) {
                      isClickedSlot1 = false;
                      isClickedSlot2 = false;
                      isClickedSlot4 = false;
                      isClickedSlot5 = false;
                      isClickedSlot6 = false;
                      isClickedSlot7 = false;
                      isClickedSlot8 = false;
                      isClickedSlot3 = false;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.red[500],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      color: isClickedSlot9
                          ? selectedBackgroundTime
                          : backgroundTime),
                  child: Text(
                    '21:00',
                    style: TextStyle(
                        color:
                            isClickedSlot9 ? selectedTextTime : textColorTime),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),

          SizedBox(height: 30.0),
          Text(
            'Available Days',
            style: TextStyle(fontSize: 20.0),
          ),

          // ************** Days *****************
          Row(
            children: [
              Spacer(),

              // *********** Mon *****************
              InkWell(
                onTap: () {
                  setState(() {
                    isClickedMon = !isClickedMon;
                    if (isClickedMon) {
                      isClickedTue = false;
                      isClickedWed = false;
                      isClickedThu = false;
                      isClickedFri = false;
                      isClickedSat = false;
                      isClickedSun = false;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.teal,
                      ),
                      color:
                          isClickedMon ? selectedBackgroundDay : backgroundDay,
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  child: Text(
                    'Mon',
                    style: TextStyle(
                        color: isClickedMon ? selectedTextDay : textColorDay),
                  ),
                ),
              ),
              SizedBox(width: 4.0),

              // *********** 2nd Slot *****************
              InkWell(
                onTap: () {
                  setState(() {
                    isClickedTue = !isClickedTue;
                    if (isClickedTue) {
                      isClickedMon = false;
                      isClickedWed = false;
                      isClickedThu = false;
                      isClickedFri = false;
                      isClickedSat = false;
                      isClickedSun = false;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.teal,
                      ),
                      color:
                          isClickedTue ? selectedBackgroundDay : backgroundDay,
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  child: Text(
                    'Tue',
                    style: TextStyle(
                        color: isClickedTue ? selectedTextDay : textColorDay),
                  ),
                ),
              ),
              SizedBox(width: 4.0),

              // ************* 3rd Slot **************
              InkWell(
                onTap: () {
                  setState(() {
                    isClickedWed = !isClickedWed;
                    if (isClickedWed) {
                      isClickedTue = false;
                      isClickedMon = false;
                      isClickedThu = false;
                      isClickedFri = false;
                      isClickedSat = false;
                      isClickedSun = false;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.teal,
                      ),
                      color:
                          isClickedWed ? selectedBackgroundDay : backgroundDay,
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  child: Text(
                    'Wed',
                    style: TextStyle(
                        color: isClickedWed ? selectedTextDay : textColorDay),
                  ),
                ),
              ),

              SizedBox(width: 4.0),

              InkWell(
                onTap: () {
                  setState(() {
                    isClickedThu = !isClickedThu;
                    if (isClickedThu) {
                      isClickedTue = false;
                      isClickedWed = false;
                      isClickedMon = false;
                      isClickedFri = false;
                      isClickedSat = false;
                      isClickedSun = false;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.teal,
                      ),
                      color:
                          isClickedThu ? selectedBackgroundDay : backgroundDay,
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  child: Text(
                    'Thu',
                    style: TextStyle(
                        color: isClickedThu ? selectedTextDay : textColorDay),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 6.0),

          // ************** Days *****************
          Row(
            children: [
              Spacer(),

              // *********** Fri *****************
              InkWell(
                onTap: () {
                  setState(() {
                    isClickedFri = !isClickedFri;
                    if (isClickedFri) {
                      isClickedTue = false;
                      isClickedWed = false;
                      isClickedThu = false;
                      isClickedMon = false;
                      isClickedSat = false;
                      isClickedSun = false;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.teal,
                      ),
                      color:
                          isClickedFri ? selectedBackgroundDay : backgroundDay,
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  child: Text(
                    'Fri',
                    style: TextStyle(
                        color: isClickedFri ? selectedTextDay : textColorDay),
                  ),
                ),
              ),
              SizedBox(width: 4.0),

              // *********** Sat *****************
              InkWell(
                onTap: () {
                  setState(() {
                    isClickedSat = !isClickedSat;
                    if (isClickedSat) {
                      isClickedMon = false;
                      isClickedWed = false;
                      isClickedThu = false;
                      isClickedFri = false;
                      isClickedMon = false;
                      isClickedSun = false;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.teal,
                      ),
                      color:
                          isClickedSat ? selectedBackgroundDay : backgroundDay,
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  child: Text(
                    'Tue',
                    style: TextStyle(
                        color: isClickedSat ? selectedTextDay : textColorDay),
                  ),
                ),
              ),
              SizedBox(width: 4.0),

              // ************* Sun **************
              InkWell(
                onTap: () {
                  setState(() {
                    isClickedSun = !isClickedSun;
                    if (isClickedSun) {
                      isClickedTue = false;
                      isClickedMon = false;
                      isClickedThu = false;
                      isClickedFri = false;
                      isClickedSat = false;
                      isClickedMon = false;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.teal,
                      ),
                      color:
                          isClickedSun ? selectedBackgroundDay : backgroundDay,
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  child: Text(
                    'Sun',
                    style: TextStyle(
                        color: isClickedSun ? selectedTextDay : textColorDay),
                  ),
                ),
              ),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}

void validateAppointment(BuildContext context) {
  PaymentSheet paymentSheet = PaymentSheet();
  if ((isClickedSlot1 ||
          isClickedSlot2 ||
          isClickedSlot3 ||
          isClickedSlot4 ||
          isClickedSlot5 ||
          isClickedSlot6 ||
          isClickedSlot7 ||
          isClickedSlot8 ||
          isClickedSlot9) &&
      (isClickedMon ||
          isClickedTue ||
          isClickedWed ||
          isClickedThu ||
          isClickedFri ||
          isClickedSat ||
          isClickedSun)) {
    paymentSheet.paymentBottomSheet(context);
  } else {
    Flushbar(
      message: 'Please Select Time & Day',
      duration: Duration(seconds: 3),
    )..show(context);
  }
}
