import 'package:flutter/material.dart';
import 'package:tourpulse/ThirdPage.dart'; // Import ThirdPage

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/abc.jpg'), // Your background image path
                fit: BoxFit.cover, // Ensures the image covers the entire background
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft, 
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 40.0), 
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Start Your Journey with TourPulse',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87, 
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'At TourPulse, we believe that travel should be seamless, '
                          'stress-free, and full of joy. Whether you\'re planning a '
                          'weekend getaway or a month-long adventure, our app is '
                          'designed to be your trusted guide, helping you manage '
                          'every aspect of your journey with ease.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87, 
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(flex: 3), 

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    backgroundColor: Colors.grey[800],
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20), // Space between the button and the circles

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      width: 12,
                      height: 12,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Spacer(flex: 1), 
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SecondPage(),
  ));
}
