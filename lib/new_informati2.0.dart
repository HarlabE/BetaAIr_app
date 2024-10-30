import 'package:airline/passenger_screen.dart';
import 'package:flutter/material.dart';

class NewInformati2 extends StatefulWidget {
  const NewInformati2({super.key});

  @override
  State<NewInformati2> createState() => _NewInformati2State();
}

String? selectedValue3;
TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();

class _NewInformati2State extends State<NewInformati2> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Text("Add Passenger"),
                  ],
                )),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                key: _formKey,
                child: ListView(children: [
                  DropdownButtonFormField<String>(
                    value: selectedValue3,
                    decoration: const InputDecoration(labelText: "Title"),
                    items: ["Alh", "Mr", "Mrs", "Miss"].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue3 = newValue;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "First Name*",
                      prefixIcon: Icon(Icons.person),
                    ),
                    controller: firstNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your first name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Last Name*",
                      prefixIcon: Icon(Icons.person),
                    ),
                    controller: lastNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your last name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      controller: _dateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        labelText: "Date of Birth",
                        prefixIcon: Icon(Icons.calendar_today),
                      ),
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                        );
                        if (pickedDate != null) {
                          setState(() {
                            _dateController.text =
                                "${pickedDate.toLocal()}".split(' ')[0];
                          });
                        }
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField<String>(
                    items: ["Male", "Female", "Other"].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {},
                    decoration: InputDecoration(labelText: "Gender"),
                  ),
                  DropdownButtonFormField<String>(
                    items: ["Nigeria", "United States", "Canada"]
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {},
                    decoration: InputDecoration(labelText: "Country"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Mobile Number*",
                      prefixText: "+234 ",
                      prefixIcon: Icon(Icons.phone),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your mobile number';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email*",
                      prefixIcon: Icon(Icons.email),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                          .hasMatch(value)) {
                        return 'Enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Process the form
                        }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PassengerScreen(),
                            ));
                      },
                      child: Text('Add'),
                      style: ElevatedButton.styleFrom(
                          shape: LinearBorder(),
                          fixedSize: Size(300, 50),
                          backgroundColor:
                              const Color.fromARGB(255, 246, 247, 214),
                          foregroundColor: Colors.black)),
                ]))));
  }
}
