import 'package:flutter/material.dart';

class pending extends StatefulWidget {
  const pending({super.key});

  @override
  State<pending> createState() => _pendingState();
}

class _pendingState extends State<pending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('Pending'),
    centerTitle: true,
    actions: [
    TextButton(
    onPressed: () {},
    child: Text(
    'Check Status',
    style: TextStyle(color: Colors.white),
    ),
    )
    ],
    ),
    body: SingleChildScrollView(
    padding: EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    // Status Banner
    Container(
    width: double.infinity,
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
    color: Colors.red.shade50,
    borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
    'Waiting for Provider Approval',
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
    ),
    ),
    SizedBox(height: 16),

    // Booking Details Section
    Card(
    elevation: 4,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
    padding: EdgeInsets.all(16),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'Booking ID',
    style: TextStyle(color: Colors.grey),
    ),
    Text(
    '#8',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    ),
    ),
    SizedBox(height: 12),
    Row(
    children: [
    Expanded(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'Pipe Bursting Repair',
    style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 8),
    Row(
    children: [
    Icon(Icons.calendar_today, size: 16),
    SizedBox(width: 8),
    Text('Date: November 22, 2024'),
    ],
    ),
    SizedBox(height: 8),
    Row(
    children: [
    Icon(Icons.access_time, size: 16),
    SizedBox(width: 8),
    Text('Time: 2:33 PM'),
    ],
    ),
    ],
    ),
    ),
    SizedBox(width: 16),
    ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: Image.network(
    'https://via.placeholder.com/100', // Replace with actual image URL
    height: 60,
    width: 60,
    fit: BoxFit.cover,
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    ),
    SizedBox(height: 16),

    // Provider Section
    Card(
    elevation: 4,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
    padding: EdgeInsets.all(16),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'About Provider',
    style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 16),
    Row(
    children: [
    CircleAvatar(
    radius: 30,
    backgroundImage: NetworkImage(
    'https://via.placeholder.com/150'), // Replace with actual provider image URL
    ),
    SizedBox(width: 16),
    Expanded(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'Felix Harris',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    ),
    ),
    Row(
    children: [
    Icon(Icons.star, color: Colors.yellow, size: 16),
    Icon(Icons.star, color: Colors.yellow, size: 16),
    Icon(Icons.star, color: Colors.yellow, size: 16),
    Icon(Icons.star, color: Colors.yellow, size: 16),
    Icon(Icons.star_border, color: Colors.grey, size: 16),
    ],
    ),
    SizedBox(height: 4),
    Text('Carpenter'),
    ],
    ),
    ),
    ],
    ),
    SizedBox(height: 16),

    // Known Languages
    Text(
    'Known Languages',
    style: TextStyle(fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 8),
    Wrap(
    spacing: 8.0,
    children: [
    _buildLanguageChip('English'),
    _buildLanguageChip('Telugu'),
    _buildLanguageChip('Kannada'),
    _buildLanguageChip('Tamil'),
    _buildLanguageChip('Hindi'),
    ],
    ),
    SizedBox(height: 16),

    // Call and Chat Buttons
    Row(
    children: [
    Expanded(
    child: ElevatedButton.icon(
    onPressed: () {},
    icon: Icon(Icons.call),
    label: Text('Call'),
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.purple,
    ),
    ),
    ),
    SizedBox(width: 16),
    Expanded(
    child: ElevatedButton.icon(
    onPressed: () {},
    icon: Icon(Icons.chat),
    label: Text('Chat'),
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    ),
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    ),
    SizedBox(height: 16),

    // Cancel Booking Button
    SizedBox(
    width: double.infinity,
    child: ElevatedButton(
    onPressed: () {},
    child: Text('Cancel Booking'),
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.red,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    );
    }

    // Helper for Language Chip
    Widget _buildLanguageChip(String language) {
    return Chip(
    label: Text(language),
    backgroundColor: Colors.grey.shade200,
    );
    }
    }
