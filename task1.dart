import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bidding Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MaximumBid(),
    );
  }
}

class MaximumBid extends StatefulWidget {
  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  // Initial bid value
  double currentBid = 100.0;

  // Function to increase the bid by $50
  void increaseBid() {
    setState(() {
      currentBid += 50.0;  // Increase bid by $50
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bidding Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Current Maximum Bid:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              '\$${currentBid.toStringAsFixed(2)}', // Display bid with 2 decimal places
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: increaseBid,  // Call increaseBid function when tapped
              child: Text('Increase Bid by \$50'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
