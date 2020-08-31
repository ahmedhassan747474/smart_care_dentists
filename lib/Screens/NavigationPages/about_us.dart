import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
              child: Image(
            image: AssetImage('Assets/smartcare.png'),
            fit: BoxFit.fill,
          )),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white.withOpacity(0.8),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
            child: Column(
              children: <Widget>[
                Center(
                    child: Text(
                  'About  Smart Care Dental',
                  style: TextStyle(
                    color: Colors.teal[600],
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                )),
                SizedBox(height: 10.0),
                Text(
                  'Smart Care Dental is a leader in the telehealth industry in Sri Lanka',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'IbmPlex',
                    // letterSpacing: 1.2,
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10.0),
                Text(
                  'Smart care Dental - GOALS',
                  style: TextStyle(
                    color: Colors.teal[600],
                    fontWeight: FontWeight.bold,
                    // letterSpacing: 1.2,
                    fontSize: 22.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 5.0),
                Text(
                  'We aspire to make healthcare accessible, reliable and less complicated for all people. It’s our firm belief that technology is the main catalyst fueling the healthcare revolution that has already started. By fusing the latest technology with the expertise of the finest doctors, we bring you the future of digital healthcare today.',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'IbmPlex',
                    // letterSpacing: 1.2,
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10.0),
                Text(
                  'What we offer you are:',
                  style: TextStyle(
                    color: Colors.teal[600],
                    fontWeight: FontWeight.bold,
                    // letterSpacing: 1.2,
                    fontSize: 22.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '➦ Expert Medical Advice, anywhere, anytime',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'IbmPlex',
                          // letterSpacing: 1.2,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '➦ Artificial intelligence to help you understand your symptoms',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'IbmPlex',
                          // letterSpacing: 1.2,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '➦ Easy way to getting prescription online',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'IbmPlex',
                          // letterSpacing: 1.2,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '➦ You can get the Quotations from your dentist/dental surgeons for particular diseases',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'IbmPlex',
                          // letterSpacing: 1.2,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'If you want more about other services',
                  style: TextStyle(
                    color: Colors.teal[600],
                    fontWeight: FontWeight.w600,
                    fontFamily: 'IbmPlex',
                    // letterSpacing: 1.2,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Icon(
                      Icons.open_in_browser,
                    ),
                    SizedBox(width: 5.0),
                    Text('www.Aussimedics.com',
                        style: TextStyle(color: Colors.blue, fontSize: 18.0)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.email),
                    Text('support@smartcaredental.com',
                        style: TextStyle(color: Colors.red, fontSize: 18.0)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.email),
                    Text('customercare@aussiemedics.com',
                        style: TextStyle(color: Colors.red, fontSize: 18.0)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.email),
                    Text('cutomercare@doctoroncare.com',
                        style: TextStyle(color: Colors.red, fontSize: 18.0)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
