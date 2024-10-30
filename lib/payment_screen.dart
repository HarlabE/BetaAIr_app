import 'package:airline/privacy_policy.dart';
import 'package:airline/basket_screen.dart';
import 'package:airline/term_and_condition.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pay_with_paystack/pay_with_paystack.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool _isChecked = false;

  void _toggleCheckbox(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close), // Close icon instead of back
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Payment"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Total Payable Section
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Total Payable", style: TextStyle(fontSize: 18)),
                    SizedBox(height: 8),
                    Text(moneyAmount,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Agreement Checkbox
            Row(
              children: [
                Checkbox(
                  value: _isChecked, // This would be controlled by state
                  onChanged: _toggleCheckbox,
                ),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      text: "I have read and agree to the ",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary),
                      children: [
                        TextSpan(
                            text: "Terms and Condition",
                            style: const TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                            // Tap event to open terms
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TermsAndConditionsScreen()));
                              }),
                        const TextSpan(text: " and "),
                        TextSpan(
                          text: "Privacy Policy",
                          style: const TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PrivacyPolicyScreen()));
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Payment Options
            Text("Payment Options", style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            // Option 1: Credit/Debit Card
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text("Credit/Debit Card"),
              subtitle: Text("You can use all type of cards"),
              onTap: () {
                final uniqueTransRef = PayWithPayStack().generateUuidV4();

                PayWithPayStack().now(
                    context: context,
                    secretKey:
                        "sk_test_a6f096815a4bfc2b2d7602b5d3546a765d6a0f7c",
                    customerEmail: "olagunjuayodeleganiyu@gmail.com",
                    reference: uniqueTransRef,
                    callbackUrl: "setup in your paystack dashboard",
                    currency: "NGN",
                    paymentChannel: ["mobile_money", "card"],
                    amount: 160100,
                    transactionCompleted: () {
                      const SnackBar(
                        content: Text('Ticket has been sent to your email'),
                        duration: Duration(seconds: 5),
                      );
                    },
                    transactionNotCompleted: () {
                      print("Transaction Not Successful!");
                    });
              },
            ),
            // Option 2: Book on hold
            ListTile(
              leading: Icon(Icons.bookmark_border),
              title: Text("Book on hold"),
              onTap: () {
                // Handle book on hold option
              },
            ),
          ],
        ),
      ),
    );
  }
}
