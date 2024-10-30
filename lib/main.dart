import 'package:airline/Theme/theme.dart';
import 'package:airline/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BetaAir',
      theme: lightMode,
      darkTheme: darkMode,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

String dropdownValue = 'Lagos';
String? seletedValue;
String? seletedValue2;

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: const Text('BetaAir'),
          backgroundColor: Theme.of(context).colorScheme.primary,
          actions: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Homepage'),
            NavigationDestination(icon: Icon(Icons.check), label: 'Check-in'),
          ],
        ),
        body: [
          Expanded(
              child: Column(children: [
            Container(
                color: Theme.of(context).colorScheme.primary,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Select City',
                                  style: TextStyle(fontSize: 16),
                                ),
                                OverflowBar(
                                  alignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    DropdownButton(
                                        hint: const Text(
                                          'From',
                                        ),
                                        value: seletedValue,
                                        items: const [
                                          DropdownMenuItem(
                                            child: Text('Lagos'),
                                            value: 'Lagos',
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Abuja'),
                                            value: 'Abuja',
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Port-Harcourt'),
                                            value: 'Port-Harcourt',
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Kano'),
                                            value: 'Kano',
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Owerri'),
                                            value: 'Owerri',
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Ilorin'),
                                            value: 'Ilorin',
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Ibadan'),
                                            value: 'Ibadan',
                                          ),
                                        ],
                                        onChanged: (value) {
                                          if (value == null) {
                                            return;
                                          }
                                          setState(() {
                                            seletedValue = value;
                                          });
                                        }),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    DropdownButton(
                                        hint: const Text(
                                          'To',
                                        ),
                                        value: seletedValue2,
                                        items: const [
                                          DropdownMenuItem(
                                            child: Text('Lagos'),
                                            value: 'Lagos',
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Abuja'),
                                            value: 'Abuja',
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Port-Harcourt'),
                                            value: 'Port-Harcourt',
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Kano'),
                                            value: 'Kano',
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Owerri'),
                                            value: 'Owerri',
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Ilorin'),
                                            value: 'Ilorin',
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Ibadan'),
                                            value: 'Ibadan',
                                          ),
                                        ],
                                        onChanged: (value) {
                                          if (value == null) {
                                            return;
                                          }
                                          setState(() {
                                            seletedValue2 = value as String?;
                                          });
                                        }),
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SecondScreen(),
                                        ));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Theme.of(context).colorScheme.secondary,
                                    foregroundColor: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                  ),
                                  child: const Text(
                                    'Search Flight',
                                  ),
                                )
                              ])),
                    ])),
            const Column(
              children: [
                ListTile(
                  leading: Column(
                    children: [Icon(Icons.flight), Text('Lagos to Abuja')],
                  ),
                  title: Column(
                    children: [Text('6:10 - 7:20'), Text('Non-stop | 1h 10m')],
                  ),
                  trailing: Text('5 seat left'),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Column(
                    children: [Icon(Icons.flight), Text('Abuja to Owerri')],
                  ),
                  title: Column(
                    children: [Text('9:00 - 10:20'), Text('Non-stop | 1h 20m')],
                  ),
                  trailing: Text('7 seat left'),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Column(
                    children: [Icon(Icons.flight), Text('Lagos to Ilorin')],
                  ),
                  title: Column(
                    children: [Text('11:00 - 11:50'), Text('Non-stop | 50m')],
                  ),
                  trailing: Text('7 seat left'),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Column(
                    children: [
                      Icon(Icons.flight),
                      Text('Lagos to port-harcourt')
                    ],
                  ),
                  title: Column(
                    children: [Text('3:30 - 5:00'), Text('Non-stop | 1h 30m')],
                  ),
                  trailing: Text('2 seat left'),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
          ])),
          //Booking

          //Check_in
          Stack(children: [
            Container(
              color: Theme.of(context).colorScheme.background,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Check-in online here',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 40,
                ),
                Form(
                  key: _formKey,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Booking reference')),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Input a valid Booking reference';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('Surname')),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Input a valid Name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: const Text('Submit Booking reference'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      foregroundColor:
                          Theme.of(context).colorScheme.onSecondary),
                )
              ],
            ),
          ]),
        ][currentPageIndex]);
  }
}
