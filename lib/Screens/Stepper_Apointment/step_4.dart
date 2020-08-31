import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // ************** Card Number ************
          Text("Payment via Credit Card",
              style: TextStyle(color: Colors.black, fontSize: 18.0)),
          SizedBox(height: 8.0),
          TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'This Field can not be Empty';
                }
                if (value.length < 4) {
                  return 'Please Enter Full Name';
                }
                return null;
              },
              decoration: decoration('Card Number', 'XXXX XXXX XXXX XXXX')),
          SizedBox(height: 10.0),

          // ************** Expiry Date *******************

          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'This Field can not be Empty';
              }
              if (value.length < 4) {
                return 'Please Enter Full Name';
              }
              return null;
            },
            decoration: decoration('Expiry Date', 'MM/YY'),
          ),
          SizedBox(height: 10.0),

          // ************** Expiry Date *******************

          TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'This Field can not be Empty';
                }
                if (value.length < 4) {
                  return 'Please Enter Full Name';
                }
                return null;
              },
              decoration: decoration('CVV', 'XXX')),
          SizedBox(height: 10.0),

          // ************** Card Holder Name *******************

          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'This Field can not be Empty';
              }
              if (value.length < 4) {
                return 'Please Enter Full Name';
              }
              return null;
            },
            decoration: decoration('Card Holder', 'Card Holder'),
          ),
        ],
      ),
    );
  }

  InputDecoration decoration(String label, String hint) {
    return InputDecoration(
      fillColor: Colors.white,
      border: new OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: new BorderSide(color: Colors.teal)),
      filled: true,
      hintText: hint,
      labelText: label,
    );
  }
}
