import 'package:fixbro/thankyou.dart';
import 'package:flutter/material.dart';

class paymentmethod extends StatefulWidget {
  const paymentmethod({super.key});

  @override
  State<paymentmethod> createState() => _paymentmethodState();
}

class _paymentmethodState extends State<paymentmethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select payment method'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text('Amount to pay: ₹247',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          buildSectionTitle('Cards'),
          ListTile(
            leading: Icon(Icons.credit_card, color: Colors.blue),
            title: Text('Add new card'),
            onTap: () {
              // Navigate or handle card adding logic
            },
          ),
          Divider(),
          buildSectionTitle('UPI'),
          buildUPIOption(context, 'Google Pay UPI', Icons.payment),
          buildUPIOption(context, 'PhonePe UPI', Icons.phone_android),
          buildUPIOption(context, 'Amazon Pay UPI', Icons.account_balance_wallet),
          ListTile(
            leading: Icon(Icons.add, color: Colors.green),
            title: Text('Add a new UPI ID'),
            onTap: () {
              // Navigate or handle UPI ID addition
            },
          ),
          Divider(),
          buildSectionTitle('Wallet'),
          ListTile(
            leading: Icon(Icons.account_balance_wallet, color: Colors.orange),
            title: Text('Amazon Pay Balance'),
            subtitle: Text(
              'Setup now\nGet up to ₹50 cashback on a minimum booking value of ₹399',
              style: TextStyle(fontSize: 12),
            ),
            onTap: () {
              // Handle wallet setup logic
            },
          ),
          Divider(),
          buildSectionTitle('Pay with app'),
          ListTile(
            leading: Icon(Icons.apps, color: Colors.purple),
            title: Text('CRED Pay'),
            onTap: () {
              // Handle CRED Pay logic
            },
          ),
          Divider(),
          buildSectionTitle('Netbanking'),
          ListTile(
            leading: Icon(Icons.account_balance, color: Colors.teal),
            title: Text('Netbanking'),
            onTap: () {
              // Handle net banking logic
            },
          ),
          Divider(),
          buildSectionTitle('Pay after service'),
          ListTile(
            leading: Icon(Icons.online_prediction, color: Colors.blueAccent),
            title: Text('Pay online after service'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => thankyou(
                  address: '123 Main St', // Pass a valid address
                  date: DateTime.now(), // Pass a valid date
                  time: TimeOfDay.now(), // Pass a valid time
                )),
              );
            },
          ),


          ListTile(
            leading: Icon(Icons.money, color: Colors.green),
            title: Text('Pay with cash after service'),
            onTap: () {
              // Handle cash payment after service
            },
          ),
        ],
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildUPIOption(BuildContext context, String title, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      onTap: () {
        // Handle UPI payment logic
      },
    );
  }
}
