import 'package:flutter/material.dart';

class bookings extends StatefulWidget {
  const bookings({super.key});

  @override
  State<bookings> createState() => _bookingsState();
}

class _bookingsState extends State<bookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookings'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          BookingCard(
            imageUrl: 'https://via.placeholder.com/150',
            title: 'Door Casing and Trim',
            status: 'Pending',
            price: '\$31.30',
            address: '5/5 Whitefield Bangalore',
            date: 'November 8, 2024',
            time: 'at 5:00 PM',
            bookingId: '#28',
          ),
          SizedBox(height: 16),
          BookingCard(
            imageUrl: 'https://via.placeholder.com/150',
            title: 'Bodyguard Services',
            status: 'Pending',
            price: '\$40.54 (\$40.00/hr 10% Off)',
            address: '5/5 Whitefield Bangalore',
            date: 'November 8, 2024',
            time: 'at 5:00 PM',
            bookingId: '#27',
          ),
        ],
      ),

    );
  }
}

class BookingCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String status;
  final String price;
  final String address;
  final String date;
  final String time;
  final String bookingId;

  const BookingCard({
    required this.imageUrl,
    required this.title,
    required this.status,
    required this.price,
    required this.address,
    required this.date,
    required this.time,
    required this.bookingId,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    imageUrl,
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.red.shade100,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              status,
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Spacer(),
                          Text(
                            bookingId,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        price,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 8),
            buildDetailRow(Icons.location_on, 'Your Address', address),
            SizedBox(height: 8),
            buildDetailRow(Icons.calendar_today, 'Date', date),
            SizedBox(height: 8),
            buildDetailRow(Icons.access_time, 'Time', time),
          ],
        ),
      ),
    );
  }

  Widget buildDetailRow(IconData icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.grey, size: 20),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 4),
            Text(
              value,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
