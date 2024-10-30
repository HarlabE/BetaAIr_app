import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Conditions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            '''
**Terms and Conditions**

**1. Introduction**

Welcome to [Your App Name]. By accessing or using our app, you agree to be bound by these terms and conditions (the “Terms”).

**2. User Responsibilities**

You agree to use the app only for lawful purposes and in a way that does not infringe the rights of others.

**3. Account Registration**

When you create an account with us, you must provide accurate and complete information. You are responsible for maintaining the confidentiality of your account.

**4. Privacy**

Our Privacy Policy describes how we handle the information you provide to us. By using the app, you agree to the terms of the Privacy Policy.

**5. Intellectual Property**

All content on the app is the property of [Your Company Name] or its licensors. You may not use, reproduce, or distribute any content without our written permission.

**6. Termination**

We may terminate or suspend your account at any time, without prior notice or liability, for any reason.

**7. Limitation of Liability**

To the maximum extent permitted by law, [Your Company Name] shall not be liable for any indirect, incidental, or consequential damages arising from your use of the app.

**8. Changes to Terms**

We may revise these Terms at any time. By continuing to use the app after any changes, you agree to be bound by the revised Terms.

**9. Governing Law**

These Terms shall be governed by and construed in accordance with the laws of [Your Country/State].

**10. Contact Us**

If you have any questions about these Terms, please contact us at [Your Contact Information].
            ''',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
