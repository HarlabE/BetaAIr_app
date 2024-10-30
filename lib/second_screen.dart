import 'package:airline/flight_screen.dart';

import 'package:flutter/material.dart';
import 'package:airline/main.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<bool> isSelected = [true, false]; // Default first button selected
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  int number = 0;
  int number1 = 0;
  int number2 = 0;
  void _incrementNumber() {
    setState(() {
      number++;
    });
  }

  void _incrementNumber1() {
    setState(() {
      number1++;
    });
  }

  void _incrementNumber2() {
    setState(() {
      number2++;
    });
  }

  void _decrementNumber() {
    setState(() {
      number--;
    });
  }

  void _decrementNumber1() {
    setState(() {
      number1--;
    });
  }

  void _decrementNumber2() {
    setState(() {
      number2--;
    });
  }

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
            const Text('Passengers'),
            const SizedBox(
              height: 10,
            ),
            Text('$seletedValue to $seletedValue2')
          ],
        ),
      ),
      body: Center(
          child: Column(children: [
        Card(
          color: Theme.of(context).colorScheme.secondary,
          child: ToggleButtons(
            isSelected: isSelected,
            onPressed: (int index) {
              setState(() {
                for (int i = 0; i < isSelected.length; i++) {
                  isSelected[i] = i == index;
                }
              });
            },
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "One way trip",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Round trip",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        if (isSelected[0]) ...[
          Card(
            child: ListTile(
              leading: const Icon(Icons.calendar_month),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Departure Date'),
                  Text('${selectedDate.toLocal()}'.split(' ')[0]),
                ],
              ),
              onTap: () {
                _selectDate(context);
              },
            ),
          ),
        ] else if (isSelected[1]) ...[
          Card(
            // shadowColor: const Color.fromARGB(221, 96, 95, 95),
            child: ListTile(
              leading: const Icon(Icons.calendar_month),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Departure Date'),
                  Text('${selectedDate.toLocal()}'.split(' ')[0]),
                ],
              ),
              onTap: () {
                _selectDate(context);
              },
            ),
          ),
          const SizedBox(height: 5),
          Card(
            child: ListTile(
              leading: const Icon(Icons.calendar_month),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Return Date'),
                  Text('${selectedDate.toLocal()}'.split(' ')[0]),
                ],
              ),
              onTap: () {
                _selectDate(context);
              },
            ),
          )
        ],
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.family_restroom),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 5,
                    ),
                    Text('Passengers')
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Adult (12+)'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: _decrementNumber,
                          ),
                          Text(
                            ' $number',
                            style: TextStyle(fontSize: 10),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: _incrementNumber,
                          ),
                        ],
                      )
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('children(2-11)'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: _decrementNumber1,
                          ),
                          Text(
                            ' $number1',
                            style: TextStyle(fontSize: 10),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: _incrementNumber1,
                          ),
                        ],
                      )
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('infants (<2)'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: _decrementNumber2,
                          ),
                          Text(
                            ' $number2',
                            style: TextStyle(fontSize: 10),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: _incrementNumber2,
                          ),
                        ],
                      )
                    ]),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlightScreen(),
                  ));
            },
            child: const Text('Search Flight'),
            style: ElevatedButton.styleFrom(
                shape: LinearBorder(),
                fixedSize: Size(300, 50),
                backgroundColor: const Color.fromARGB(255, 246, 247, 214),
                foregroundColor: Colors.black)),
      ])),
    );
  }
}
