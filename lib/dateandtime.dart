import 'package:flutter/material.dart';

import 'checkoutpage.dart';

void main() {
  runApp(DateAndTimeApp());
}

class DateAndTimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DateAndTimeScreen(),
    );
  }
}

class DateAndTimeScreen extends StatefulWidget {
  @override
  _DateAndTimeScreenState createState() => _DateAndTimeScreenState();
}

class _DateAndTimeScreenState extends State<DateAndTimeScreen> {
  DateTime selectedDate = DateTime.now();
  String selectedTimeSlot = "";

  List<String> morningSlots = [
    "9 AM - 9:30 AM",
    "9:30 AM - 10 AM",
    "10 AM - 10:30 AM",
    "10:30 AM - 11 AM",
    "11 AM - 11:30 AM",
    "11:30 AM - 12 PM"
  ];

  List<String> afternoonSlots = [
    "12 PM - 12:30 PM",
    "12:30 PM - 1 PM",
    "1 PM - 1:30 PM",
    "1:30 PM - 2 PM",
    "2 PM - 2:30 PM",
    "2:30 PM - 3 PM"
  ];

  void pickDate(BuildContext context) async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 30)),
    );

    if (date != null) {
      setState(() {
        selectedDate = date;
      });
    }
  }

  Widget dateTile(String label, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget timeSlotButton(String time, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.green : Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? Colors.green : Colors.grey,
          ),
        ),
        child: Text(
          time,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Your Slot"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select the Date",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                dateTile(
                  "Today",
                  selectedDate == DateTime.now(),
                      () {
                    setState(() {
                      selectedDate = DateTime.now();
                    });
                  },
                ),
                dateTile(
                  "Tomorrow",
                  selectedDate == DateTime.now().add(Duration(days: 1)),
                      () {
                    setState(() {
                      selectedDate = DateTime.now().add(Duration(days: 1));
                    });
                  },
                ),
                dateTile(
                  "Pick Date",
                  false,
                      () => pickDate(context),
                ),
              ],
            ),
            SizedBox(height: 24),
            Text(
              "Select Start Time",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              "Morning",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Wrap(
              children: morningSlots
                  .map((slot) => timeSlotButton(
                slot,
                selectedTimeSlot == slot,
                    () {
                  setState(() {
                    selectedTimeSlot = slot;
                  });
                },
              ))
                  .toList(),
            ),
            SizedBox(height: 16),
            Text(
              "Afternoon",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Wrap(
              children: afternoonSlots
                  .map((slot) => timeSlotButton(
                slot,
                selectedTimeSlot == slot,
                    () {
                  setState(() {
                    selectedTimeSlot = slot;
                  });
                },
              ))
                  .toList(),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>CheckoutPage()),
                  );
                if (selectedTimeSlot.isNotEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                        "Booked: ${selectedDate.toLocal()} at $selectedTimeSlot"),
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Please select a time slot!"),
                  ));
                }


              },
              child: Text("Book Slot"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}
