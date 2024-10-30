import 'package:airline/payment_screen.dart';
import 'package:flutter/material.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({super.key});

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

const String moneyAmount = '159,100.00';

class _BasketScreenState extends State<BasketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basket"),
        centerTitle: true,
        leading: BackButton(), // Back arrow
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Passenger Information Section
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Passengers",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text("No of Adults: 1"),
                      Text("No of Children: 0"),
                      Text("No of Infants: 0"),
                    ],
                  ),
                ),
              ),

              // Flight Information Section
              SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lagos to Abuja",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text("Flight No: P4-7120"),
                      Text("Departure Time: 20 Oct, 06:10 PM"),
                      Text("Arrival Time: 20 Oct, 07:20 PM"),
                    ],
                  ),
                ),
              ),

              // Summary Section
              SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Summary",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text("Total Base Fare: ₦90,400.00"),
                      Text("Total Surcharge: ₦59,600.00"),
                      Text("Total Tax: ₦9,100.00"),
                      Text("Discount: --"),
                    ],
                  ),
                ),
              ),

              // Outstanding Amount
              SizedBox(height: 16),
              Text(
                "Outstanding Amount",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                moneyAmount,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                )
              ),
              SizedBox(
                height: 20,
              ),
              // Check Out Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentScreen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    minimumSize: Size(double.infinity, 50),
                    shape: LinearBorder(),
                    fixedSize: Size(300, 50),
                    backgroundColor: const Color.fromARGB(255, 246, 247, 214),
                    foregroundColor: Colors.black),
                child: const Text("Check Out", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
