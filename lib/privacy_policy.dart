import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: const Padding(
        padding:  EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            '''
**Privacy Policy**

**1. Introduction**

Welcome to [Your App Name]. We value your privacy and are committed to protecting your personal information. This Privacy Policy describes how we collect, use, and share your information when you use our app.

**2. Information We Collect**

We may collect the following types of information:
- Personal Identification Information (Name, email address, phone number, etc.)
- Usage Data (information on how you use the app)
- Device Information (IP address, browser type, operating system, etc.)

**3. How We Use Your Information**

We use the information we collect to:
- Provide and maintain our app
- Improve user experience
- Communicate with you
- Process transactions

**4. Sharing Your Information**

We do not share your personal information with third parties, except to:
- Comply with legal obligations
- Protect and defend our rights and property
- Prevent or investigate possible wrongdoing in connection with the app

**5. Security of Your Information**

We take the security of your personal information seriously and use reasonable measures to protect it. However, no method of transmission over the Internet or electronic storage is 100% secure.

**6. Your Data Protection Rights**

Depending on your location, you may have the following rights regarding your personal information:
- Access to your data
- Rectification of inaccurate or incomplete data
- Erasure of your data
- Restriction of processing
- Data portability
- Object to processing

**7. Changes to This Privacy Policy**

We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.

**8. Contact Us**

If you have any questions about this Privacy Policy, please contact us at [Your Contact Information].
            ''',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
