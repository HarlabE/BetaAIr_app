import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  final String _url = 'https://gmail.com';

  void _launchURL() async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('''
          Payment successful 
          ticket has been sent to your email.
          
    '''),
          GestureDetector(
            onTap: _launchURL,
            child: const Text(
              'Click here to go email',
              style: TextStyle(
                  color: Colors.blue, decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
