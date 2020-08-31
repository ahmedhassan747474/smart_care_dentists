import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:smart_care_dentists/Screens/NavigationPages/home_page.dart';
import 'package:smart_care_dentists/Screens/NavigationPages/profile_page.dart';
import 'package:smart_care_dentists/Screens/NavigationPages/about_us.dart';

class MainHomeScreen extends StatefulWidget {
  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  //************** */
  int _page = 0;
  //********** All Pages  */
  final HomePage _homePage = HomePage();
  final ProfileDetails _profileDetails = ProfileDetails();
  final AboutUs _aboutUs = AboutUs();
  //
  //
  Widget _showPage = HomePage();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _homePage;
        break;
      case 1:
        return _profileDetails;

        break;
      case 2:
        return _aboutUs;

        break;
      case 3:
        return Container(
          color: Colors.grey[100],
          child: Center(
            child: Text(
              'Chat Bot Page',
              style: TextStyle(fontSize: 25.0),
            ),
          ),
        );
        break;
      default:
        return _homePage;
    }
  }

  // GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.teal,
      bottomNavigationBar: CurvedNavigationBar(
        index: _page,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.home, color: Colors.white, size: 30),
          Icon(Icons.perm_identity, color: Colors.white, size: 30),
          Icon(Icons.info_outline, color: Colors.white, size: 30),
          Icon(Icons.chat_bubble_outline, color: Colors.white, size: 30),
        ],
        color: Colors.teal,
        buttonBackgroundColor: Colors.teal,
        backgroundColor: Colors.grey[100],
        animationCurve: Curves.decelerate,
        animationDuration: Duration(milliseconds: 500),
        onTap: (index) {
          setState(() {
            _showPage = _pageChooser(index);
          });
        },
      ),
      body:
          // Container(
          // child:
          SafeArea(child: _showPage),
      // )
    );
  }
}
