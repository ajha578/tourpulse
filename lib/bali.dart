import 'package:flutter/material.dart';
import 'package:tourpulse/home.dart'; // Import your Home page

class Bali extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Best Places in Bali'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()), // Navigate to Home page
            );
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                filled: true,
                fillColor: Colors.lightBlueAccent[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildPlaceItem('assets/canggu.jpg', 'Canggu', screenWidth),
                _buildPlaceItem('assets/munduk.jpg', 'Munduk', screenWidth),
                _buildPlaceItem('assets/ubud.jpg', 'Ubud', screenWidth),
                _buildPlaceItem('assets/manali.jpg', 'Nusa Ceningan', screenWidth),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildPlaceItem(String imagePath, String placeName, double screenWidth) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(imagePath, fit: BoxFit.cover, height: screenWidth * 0.30, width: double.infinity),
              Positioned(
                right: 8,
                top: 8,
                child: Icon(Icons.bookmark, color: Colors.blue),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              placeName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
