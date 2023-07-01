import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../MainPage/BottomBar.dart';


class PaymentReceipt extends StatelessWidget {
  final String receiptNumber = '12849732748693264320432';
  final String date = '24/07/2023';
  final double amount = 29.99;
  final String subscriptionPeriod = '3 Days';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white12,
        title: Text('Payment Receipt'),
        titleTextStyle: TextStyle(color: Colors.amber, fontSize: 20),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            BarcodeWidget(
              barcode: Barcode.code128(),
              data: receiptNumber,
              width: 230,
              height: 90,
              drawText: false,
              color: Colors.white,
            ),
            SizedBox(height: 7),
            Text(
              '$receiptNumber',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),

            SizedBox(height: 20),
            Text(
              'Date: $date',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Amount: \R\M ${amount.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Subscription Period: $subscriptionPeriod',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),

            SizedBox(height: 70),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),),
              onPressed: () {
                // Navigate back to the PurchasePage
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => BottomBar()),
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Center(
                      child: Text('Payment completed, Enjoy your show !'),
                    ),
                    duration: Duration(seconds: 5),
                    backgroundColor: Colors.green,
                  ),
                );
                // Navigate back to the login page
                Future.delayed(Duration(seconds: 3), () {
                  Navigator.pop(context);
                });
              },
              child: Text('Done payment!'),
            ),
          ],
        ),
      ),
    );
  }
}