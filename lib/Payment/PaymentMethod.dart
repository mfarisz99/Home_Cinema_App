import 'package:flutter/material.dart';
import 'PaymentReceipt.dart';

class PaymentMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white12,
        title: Text('Payment Method'),
        titleTextStyle: TextStyle(color: Colors.amber, fontSize: 20),
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50, right: 10, left: 20),
              child: Container(
                width: 120,
                height: 120,
                color: Colors.transparent,
                child: ElevatedButton(
                  onPressed: () {
                    // Perform Visa payment logic

                    // Navigate to PaymentReceipt page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentReceipt(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/Visa.jpg', // Replace with the actual asset path for the Visa image
                        width: 100,
                        height: 100,
                      ),
                      Text('Visa', style: TextStyle(fontSize: 16, color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, right: 10, left: 20),
              child: Container(
                width: 120,
                height: 120,
                color: Colors.transparent,
                child: ElevatedButton(
                  onPressed: () {
                    // Perform online banking payment logic

                    // Navigate to PaymentReceipt page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentReceipt(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/FPX.png', // Replace with the actual asset path for the Online Banking image
                        width: 80,
                        height: 80,
                      ),
                      Text('Online Banking', style: TextStyle(fontSize: 15, color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 20, right: 10),
              child: Container(
                width: 120,
                height: 120,
                color: Colors.transparent,
                child: ElevatedButton(
                  onPressed: () {
                    // Perform Touch n' Go payment logic

                    // Navigate to PaymentReceipt page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentReceipt(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/TnG.png', // Replace with the actual asset path for the Touch n' Go image
                        width: 100,
                        height: 100,
                      ),
                      Text('Touch \'n Go', style: TextStyle(fontSize: 16,  color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}