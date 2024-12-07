import 'package:flutter/material.dart';

import 'bookings.dart';
import 'homepage.dart';

class thankyou extends StatelessWidget {
  final String address;
  final DateTime date;
  final TimeOfDay time;
  const thankyou({super.key,
  required this.address,
  required this.date,
  required this.time,
});

  @override
  Widget build(BuildContext context) {
    return
  Scaffold(
      appBar: AppBar(
        title: const Text('Book Service'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Address',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(address),
            const SizedBox(height: 16.0),
            const Text(
              'Booking Details',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Date'),
                Text('${date.day} ${date.month}, ${date.year}'),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Time'),
                Text('${time.hour}:${time.minute}'),
              ],
            ),
            const SizedBox(height: 24.0),
            const Center(
              child: Icon(
                Icons.check_circle,
                size: 50.0,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 16.0),
            const Center(
              child: Text(
                'Thank you!',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8.0),
            const Center(
              child: Text('Your booking is confirmed.'),
            ),
            const SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                  child: const Text('Go to Home'),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => bookings()),
                    );
                  },
                  child: const Text('Go to Review'),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Disclaimer',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'You will be asked for payment once your booking is completed.',
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle confirmation action
              },
              child: const Text('Confirm'),
            ),
          ],
        ),
      ),
    );
  }
}