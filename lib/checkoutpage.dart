import 'package:fixbro/payment_method.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckoutPage(),
    );
  }
}

class CheckoutPage extends StatelessWidget {
  final List<Map<String, dynamic>> frequentlyAddedItems = [
    {"title": "Carpenter visit", "price": 49, "image": Icons.home_repair_service},
    {"title": "Wooden shelf installation", "price": 149, "image": Icons.shelves},
    {"title": "Curtain installation", "price": 79, "image": Icons.window},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Summary"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Service Summary Section
              Card(
                elevation: 4,
                margin: EdgeInsets.only(bottom: 16),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Drill & hang (wall decor)",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () {},
                              ),
                              Text("2", style: TextStyle(fontSize: 16)),
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          Text("\u20B998", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.home),
                        title: Text("Home - Hh, Electronics City Phase"),
                        trailing: Icon(Icons.edit),
                      ),
                      ListTile(
                        leading: Icon(Icons.calendar_today),
                        title: Text("Wed, Oct 30 - 01:30 PM"),
                        trailing: Icon(Icons.edit),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text("Srikanth, +91-7676391075"),
                        trailing: Icon(Icons.edit),
                      ),
                    ],
                  ),
                ),
              ),

              // Frequently Added Together Section
              Text(
                "Frequently added together",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: frequentlyAddedItems.map((item) {
                    return Container(
                      margin: EdgeInsets.only(right: 16),
                      width: 120,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 36,
                            backgroundColor: Colors.blue.shade100,
                            child: Icon(item['image'], size: 32, color: Colors.blue),
                          ),
                          SizedBox(height: 8),
                          Text(
                            item['title'],
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 4),
                          Text("\u20B9${item['price']}", style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 4),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Add"),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(80, 30), backgroundColor: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 16),

              // Payment Summary Section
              Text(
                "Payment summary",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      rowItem("Item total", "\u20B998"),
                      rowItem("Taxes and Fee", "\u20B99"),
                      rowItem("Visitation Fee", "\u20B999"),
                      rowItem("Convenience Fee", "\u20B949"),
                      Divider(),
                      rowItem("Total", "\u20B9206", isBold: true),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Policies Section
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Cancellation Policy",
                  style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Booking Policy",
                  style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Proceeding to payment...")),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => paymentmethod()),
                  );
                },
                child: Text("Proceed to pay"),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.purple,
                ),
              )

              //
              // Proceed to Pay Button
              // ElevatedButton(
              //   onPressed: () {
              //     ScaffoldMessenger.of(context).showSnackBar(
              //       SnackBar(content: Text("Proceeding to payment...")),
              //     );
              //   },
              //   child: Text("Proceed to pay",),
              //   style: ElevatedButton.styleFrom(
              //     minimumSize: Size(double.infinity, 50), backgroundColor: Colors.purple,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget rowItem(String label, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
          Text(
            value,
            style: TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
