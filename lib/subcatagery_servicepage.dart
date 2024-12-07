import 'package:flutter/material.dart';

import 'adress_popup.dart';
import 'location_pin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarpenterServicePage(),
    );
  }
}

class CarpenterServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor:   Colors.orange[100],
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.share)),


        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Section
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.orange[100],
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Affordable repairs starting at just ₹49",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset(
                    'assets/images/yellow door.jpeg',
                    height: 150,
                    width: 200,
                    fit:BoxFit.cover ,
                  ),
                ],
              ),
            ),
      SizedBox(height: 10,),
            Container(
              child: Text(
                " Carpenter",

                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ),



Container(
              child: Row(

                children: [
                  Icon(Icons.star, color: Colors.green),

                  SizedBox(width: 4),
                  Text(
                    "4.81",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Text("243K reviews"),

                  Spacer(),
                  Chip(
                    backgroundColor: Colors.green[100],
                    label: Text("Save 10% on every order"),
                  ),
                ],
              ),
            ),

            // Categories Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Wrap(
                spacing: 42,
                runSpacing: 40,
                children: [
                  _buildCategoryItem(Icons.local_florist, "Flower installation"),
                  _buildCategoryItem(Icons.kitchen, "Cupboard & drawer"),
                  _buildCategoryItem(Icons.build, "Drill & hang"),
                  _buildCategoryItem(Icons.door_front_door, "Door"),
                  _buildCategoryItem(Icons.window, "Window & curtain"),
                  _buildCategoryItem(Icons.arrow_downward, "Show More"),
                  _buildCategoryItem(Icons.baby_changing_station_sharp, "Clothes hanger"),
                  _buildCategoryItem(Icons.chair, "Furniture repair"),
                  _buildCategoryItem(Icons.arrow_upward, "Show Less"),
                ],
              ),
            ),

            Divider(),

            // Flower Installation Section
            _buildServiceSection(
              "Flower installation",
              [
                _buildServiceItem("Entrance flower installation", "₹139", "30 mins", 'assets/images/reddoor.jpeg'),
                _buildServiceItem("Balcony freefall installation", "₹139", "30 mins", 'assets/images/balconydecaration.jpeg'),
                _buildServiceItem("Outdoor flower installation", "₹225", "45 mins", 'assets/images/outdooor.jpeg'),
              ],
            ),

            Divider(),

            // Drill and Hang Section
            _buildServiceSection(
              "Drill & hang",
              [
                _buildServiceItem("Wall decor installation", "₹49", "20 mins\nView details", 'assets/images/drillhang.jpeg'),
                _buildServiceItem("Bath fitting installation", "₹79", "10 mins\nView details", 'assets/images/bathfitting.jpeg'),
              ],
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "₹98",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
           Center(
            child: ElevatedButton(
              child: Text("Proceed"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,),
              onPressed: () => showDialog(
                context: context,
                builder: (context) => AddressPopup(),
              ),
            ),
          ),


            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryItem(IconData icon, String title) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey[200],
          child: Icon(icon, size: 30),
        ),
        SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildServiceSection(String title, List<Widget> services) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Column(children: services),
        ],
      ),
    );
  }

  Widget _buildServiceItem(String name, String price, String duration, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Image.asset(
            imagePath, // Replace with your image path
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text("$price • $duration"),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: (

                ) {},
            child: Text("Add"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
          ),
        ],
      ),
    );
  }
}
