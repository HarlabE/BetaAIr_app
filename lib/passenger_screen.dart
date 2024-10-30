import 'package:airline/basket_screen.dart';
// import 'package:airline/main.dart';
// import 'package:airline/main.dart';
import 'package:airline/new_informati2.0.dart';
import 'package:flutter/material.dart';

class PassengerScreen extends StatelessWidget {
  const PassengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passengers"),
        centerTitle: true,
        leading: BackButton(), // back arrow
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Passengers",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text("1/1 Entry", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(Icons.person, size: 40),
              title: Text(
                  '$selectedValue3 ${firstNameController.text} ${lastNameController.text}'),
              subtitle: Text("Lead passenger"),
              trailing: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.edit)),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BasketScreen(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                  shape: LinearBorder(),
                  fixedSize: Size(300, 50),
                  backgroundColor: const Color.fromARGB(255, 246, 247, 214),
                  foregroundColor: Colors.black),
              child: const Text("Continue"),
            ),
          ),
        ],
      ),
    );
  }
}
