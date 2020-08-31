import 'package:flutter/material.dart';
import 'package:smart_care_dentists/widgets/snackbar.dart';

class PaymentSheet {
  void paymentBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            color: Color(0xFF737373),
            child: BuildPaymentSheet(),
          );
        });
  }
}

class BuildPaymentSheet extends StatefulWidget {
  const BuildPaymentSheet({
    Key key,
  }) : super(key: key);

  @override
  _BuildPaymentSheetState createState() => _BuildPaymentSheetState();
}

PaymentSheet obj = PaymentSheet();

class _BuildPaymentSheetState extends State<BuildPaymentSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0)),
      ),
      height: MediaQuery.of(context).size.height * .30,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 8.0, bottom: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //************* Text ***************/
                Text('Select a Payment Method',
                    style: TextStyle(color: Colors.black, fontSize: 18.0)),

                //*************** Cancel Icon ***************/
                IconButton(
                    icon: Icon(Icons.cancel, color: Colors.teal, size: 25),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ],
            ),
            // *********** Credit Card **************
            InkWell(
              onTap: () {
                CustomSnackBar obj = CustomSnackBar();
                obj.showSnackBar(context, 'Credit Card is Selected');
              },
              child: Row(
                children: [
                  Image(
                    image: AssetImage('Assets/creditcard.png'),
                    width: 80,
                    height: 50,
                  ),
                  SizedBox(width: 16.0),
                  Text(
                    'Credit Card',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // ************ PayPal *****************
            InkWell(
              onTap: () {
                CustomSnackBar obj = CustomSnackBar();
                obj.showSnackBar(context, 'PayPal is Selected');
              },
              child: Row(
                children: [
                  Image(
                    image: AssetImage('Assets/creditcard.png'),
                    width: 80,
                    height: 50,
                  ),
                  SizedBox(width: 16.0),
                  Text(
                    'PayPal',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
