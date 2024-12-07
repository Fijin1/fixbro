import 'package:fixbro/bookings.dart';
import 'package:fixbro/subcatagery_servicepage.dart';
import 'package:fixbro/testpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Electronic City\nbengaluru-karnataka-india',style: GoogleFonts.abel(
            fontSize: 15,
            fontWeight: FontWeight.w400,
        ),
      ),


        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/images/homepagead.jpg'), // Add your banner image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Services Grid
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Explore all services',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => test()),
                    );
                  },
                  child: _buildServiceItem('Women\'s\n Salon&Spa', Icons.spa),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => test()),
                    );
                  },
                  child: _buildServiceItem('Mens Salon&\nmassage', Icons.person),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => test()),
                    );
                  },
                  child:  _buildServiceItem('AC&\nAppliance Repair', Icons.ac_unit),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => test()),
                    );
                  },
                  child:  _buildServiceItem('Cleaning&Pest Control', Icons.cleaning_services),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => test()),
                    );
                  },
                  child:_buildServiceItem('Weekly Bathroom Cleaning', Icons.bathroom),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  CarpenterServicePage()),
                    );
                  },
                  child: _buildServiceItem('Electrician Plumber&Carpenter', Icons.electrical_services),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => test()),
                    );
                  },
                  child: _buildServiceItem('Native Water Purifeir', Icons.water_drop),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => test()),
                    );
                  },
                  child:  _buildServiceItem('Painting&decor', Icons.format_paint),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => test()),
                    );
                  },
                  child:  _buildServiceItem('Wall Panels', Icons.house),
                ),
                // Add onTap for other items similarly
              ],
            ),


            // GridView.count(
            //   shrinkWrap: true,
            //   physics: NeverScrollableScrollPhysics(),
            //   crossAxisCount: 3,
            //   crossAxisSpacing: 10,
            //   mainAxisSpacing: 10,
            //   children: [
            //     _buildServiceItem('Women\'s\n Salon&Spa', Icons.spa),
            //     _buildServiceItem('Mens Salon&\nmassage', Icons.person),
            //     _buildServiceItem('AC&\nAppliance Repair', Icons.ac_unit),
            //     _buildServiceItem('Cleaning&Pest Control', Icons.cleaning_services),
            //     _buildServiceItem('Weekly Bathroom Cleaning', Icons.bathroom),
            //     _buildServiceItem('Electrician Plumber&Carpenter', Icons.electrical_services),
            //     _buildServiceItem('Native Water Purifeir', Icons.water_drop),
            //     _buildServiceItem('Painting&decor', Icons.format_paint),
            //     _buildServiceItem('Wall Panels', Icons.house),
            //   ],
            // ),




    Center(
              child: Container(
                child: Image.asset('assets/images/ads3.jpeg'),


              ),
            ),



            // New & Noteworthy
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'New and Noteworthy',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            _buildHorizontalList([
              //
               'assets/images/diwali.png',
              'assets/images/bathroomcleaning.png',
              'assets/images/waterpurifeir.png',
            ]),

            // Most Booked Services
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Most Booked Services',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            _buildHorizontalList([
              'assets/images/bathroomweekly.jpeg',
              'assets/images/sofacleaning.png',
              'assets/images/intencecleaning.png',
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Cleaning & Pest Control',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            _buildHorizontalList([
              'assets/images/homecleaning.jpeg',
              'assets/images/sofacarpet.jpeg',

            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Ac & appliance repair',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            _buildHorizontalList([
              'assets/images/acrepair.jpeg',
              'assets/images/swashing.jpeg',

            ]),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Quick Home Repairs',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            _buildHorizontalList([
              'assets/images/carpenter.jpeg',
              'assets/images/plumber.jpeg',
              'assets/images/electrician.jpeg',
            ]),
          ],
        ),
      ),
      //
      //   bottomNavigationBar: BottomNavigationBar(
      //     items: [
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //       BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Bookings'),
      //       BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
      //       BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      //     ],
      //     selectedItemColor: Colors.purple,
      //     unselectedItemColor: Colors.black,
      //     backgroundColor: Colors.white,
      //   )
        bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
    currentIndex: _currentIndex,
    onTap: (index) {
    setState(() {
    _currentIndex = index;
    });
    if (index == 0) {
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => Homepage()),
    );
    } else if (index == 1) {
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => bookings()),
    );
    } else if (index == 2) {
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => test()),
    );
    } else if (index == 3) {
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => test()),
    );
    }
    },
    items: [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Bookings'),
    BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
    ],
    selectedItemColor: Colors.purple,
    unselectedItemColor: Colors.black,
    backgroundColor: Colors.white,
        ),


    );
  }

  Widget _buildServiceItem(String title, IconData icon) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          child: Icon(icon, size: 30),
        ),
        SizedBox(height: 5),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildHorizontalList(List<String> imagePaths) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePaths[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
