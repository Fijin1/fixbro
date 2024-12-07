import 'package:flutter/material.dart';

import 'dateandtime.dart';

class adresspopup extends StatefulWidget {
  const adresspopup({super.key});

  @override
  State<adresspopup> createState() => _adresspopupState();
}

class _adresspopupState extends State<adresspopup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


    body: Center(
    child: ElevatedButton(
    child: Text("Open Address Popup"),
    onPressed: () => showDialog(
    context: context,
    builder: (context) => AddressPopup(),
    ),
    ),
    ),
    );
    }
    }

    class AddressPopup extends StatelessWidget {
    final _formKey = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
    return Dialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: SingleChildScrollView(
    child: Form(
    key: _formKey,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Enter Complete Address",
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 16),
    TextFormField(
    decoration: InputDecoration(
    labelText: "House/Flat/Block No.",
    border: OutlineInputBorder(),
    ),
    validator: (value) =>
    value!.isEmpty ? "This field is required" : null,
    ),
    SizedBox(height: 16),
    TextFormField(
    decoration: InputDecoration(
    labelText: "Apartment/Road/Area",
    border: OutlineInputBorder(),
    ),
    validator: (value) =>
    value!.isEmpty ? "This field is required" : null,
    ),
    SizedBox(height: 16),
    DropdownButtonFormField<String>(
    value: "Bengaluru",
    items: ["Bengaluru", "Mumbai", "Delhi", "Chennai"]
        .map((city) => DropdownMenuItem(
    value: city,
    child: Text(city),
    ))
        .toList(),
    onChanged: (value) {},
    decoration: InputDecoration(
    labelText: "City",
    border: OutlineInputBorder(),
    ),
    ),
    SizedBox(height: 16),
    TextFormField(
    decoration: InputDecoration(
    labelText: "Mobile Number",
    border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.phone,
    validator: (value) => value!.length != 10
    ? "Enter a valid 10-digit number"
        : null,
    ),
    SizedBox(height: 16),
    Text(
    "Address Type",
    style: TextStyle(fontWeight: FontWeight.bold),
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Flexible(
    child: ListTile(
    title: Text("Home"),
    leading: Radio(
    value: "Home",
    groupValue: "Home",
    onChanged: (value) {},
    ),
    ),
    ),
    Flexible(
    child: ListTile(
    title: Text("Office"),
    leading: Radio(
    value: "Office",
    groupValue: "Home",
    onChanged: (value) {},
    ),
    ),
    ),
    Flexible(
    child: ListTile(
    title: Text("Other"),
    leading: Radio(
    value: "Other",
    groupValue: "Home",
    onChanged: (value) {},
    ),
    ),
    ),
    ],
    ),
    Row(
    children: [
    Checkbox(value: false, onChanged: (value) {}),
    Text("Set as default address")
    ],
    ),
    SizedBox(height: 16),
        ElevatedButton(
          child: Text("Save and Proceed"), // Removed InkWell as it's not needed
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              // Add save logic here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  DateAndTimeScreen()),
              );
            }
          },
        style: ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 50),
    ),
    ),
    ],
    ),
    ),
    ),
    ),
    );
    }
    }

