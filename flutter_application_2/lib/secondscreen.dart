import 'package:flutter/material.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SecondscreenState createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  DateTime? selectedDate; // hods date
  DateTime? selecTime; // holds time

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add task"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Title',
              ),
            ),
            const SizedBox(height: 20),
            const Text("Select date"),
            ElevatedButton(
              onPressed: () async {
                DateTime? datepicker = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2021),
                    lastDate: DateTime(2023));
                print("hello");
                if (datepicker != null) {
                  setState(() {
                    selectedDate = datepicker;
                  });
                  print(
                      'Selected date: ${datepicker.day}-${datepicker.month}-${datepicker.year}');
                }
              },
              child: const Text("Pick Date"),
            ),
            const SizedBox(height: 20),

            // ---------------we can also use showTimePickern-------

            ElevatedButton(onPressed: () {}, child: Text("pick time"))

            // Display selected date if available
            // selectedDate != null
            //     ? Text(
            //         "Selected date: ${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year}",
            //         style: const TextStyle(fontSize: 16),
            //       )
            //     : const Text(
            //         "No date selected",
            //         style: TextStyle(fontSize: 16),
            //       ),
          ],
        ),
      ),
    );
  }
}
