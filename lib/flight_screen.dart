import 'package:airline/new_informati2.0.dart';

import 'package:flutter/material.dart';
import 'package:airline/main.dart';

class FlightScreen extends StatefulWidget {
  const FlightScreen({super.key});

  @override
  State<FlightScreen> createState() => _FlightScreenState();
}

class _FlightScreenState extends State<FlightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          centerTitle: true,
          toolbarHeight: 100,
          title: Column(
            children: [
              const Text('Select outbound'),
              const SizedBox(
                height: 10,
              ),
              Text('$seletedValue to $seletedValue2')
            ],
          ),
        ),
        body: Card(
            child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: ListView(
            children: [
              Card(
                elevation: 5, // Controls the size of the shadow
                shadowColor: const Color.fromARGB(255, 2, 2, 2),
                // Color of the shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                    leading: const Column(
                      children: [Icon(Icons.flight), Text('P4-7120')],
                    ),
                    title: Column(
                      children: [
                        Text('6:10 - 7:20'),
                        Text('Non-stop | 1h 10m')
                      ],
                    ),
                    trailing: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary),
                      child: Text(
                        'No seat',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                elevation: 5, // Controls the size of the shadow
                shadowColor: const Color.fromARGB(255, 2, 2, 2),
                // Color of the shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                    leading: const Column(
                      children: [Icon(Icons.flight), Text('P4-7120')],
                    ),
                    title: const Column(
                      children: [
                        Text('6:10 - 7:20'),
                        Text('Non-stop | 1h 10m')
                      ],
                    ),
                    trailing: OutlinedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => NewInformati2());
                      },
                      style: OutlinedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary),
                      child: Text(
                        '₦150,000',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    )),
              )
            ],
          ),
        )));
  }
}
