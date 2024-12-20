import 'package:flutter/material.dart';
import 'package:tourpulse/Home.dart';
import 'package:tourpulse/Login.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image container filling the whole screen
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/abc.jpg'), // Your image asset
                fit: BoxFit.cover, // Ensure image covers the area
              ),
            ),
          ),
          // Bottom section with input fields for sign-up
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4, // Adjusted to move it upwards
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width, // Full width
              decoration: BoxDecoration(
                color: Colors.blueGrey[600], // Darker color for better contrast
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: SingleChildScrollView( // Wrap in SingleChildScrollView to avoid overflow
                padding: const EdgeInsets.all(20.0), // Padding for the content
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20), // Space before the "Sign Up" text
                    // Sign Up Text
                    Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontSize: 28, // Increased font size
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Changed color to white for visibility
                      ),
                    ),
                    SizedBox(height: 20), // Space before name field
                    // Name TextField with rounded corners and shadow
                    _buildTextField(label: 'Name', icon: Icons.person),
                    SizedBox(height: 10), // Space between fields
                    // Email TextField with rounded corners and shadow
                    _buildTextField(label: 'Email', icon: Icons.email),
                    SizedBox(height: 10), // Space between fields
                    // Password TextField with rounded corners and shadow
                    _buildTextField(label: 'Password', icon: Icons.lock, obscureText: true),
                    SizedBox(height: 10), // Space between fields
                    // Confirm Password TextField with rounded corners and shadow
                    _buildTextField(label: 'Confirm Password', icon: Icons.lock, obscureText: true),
                    SizedBox(height: 20), // Space before the sign-up button
                    // Sign Up Button with shadow
                    _buildSignUpButton(context),
                    SizedBox(height: 20), // Space before the login text
                    // Login Text on the same line
                    _buildLoginText(context),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Function to build TextField widgets
  Widget _buildTextField({required String label, required IconData icon, bool obscureText = false}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 2), // Shadow position
          ),
        ],
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30), // Rounded corners
            borderSide: BorderSide.none, // Remove border line
          ),
          filled: true, // Fill color
          fillColor: Colors.white, // Fill color
        ),
      ),
    );
  }

  // Function to build the Sign Up Button
  Widget _buildSignUpButton(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10, // Adjust the blur radius for shadow effect
            offset: Offset(0, 4), // Shadow position
          ),
        ],
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5, // Decreased width of the button
        child: ElevatedButton(
          onPressed: () {
            // Navigate to Home Page
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Home()), // Replace with your HomePage class
            );
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 12), // Height adjustment
            backgroundColor: Color.fromARGB(255, 49, 81, 107),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Center(
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 25, // Maintain the original font size
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Function to build the Login Text
  Widget _buildLoginText(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to Login Page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Login()), // Replace with your Login class
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Already have an account? ",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white, // Color for the "Already have an account?" text
            ),
          ),
          Text(
            'Login',
            style: TextStyle(
              fontSize: 16,
              color: const Color.fromARGB(255, 15, 138, 239), // Color for the login text
              fontWeight: FontWeight.bold,
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
    home: SignUp(), // Updated to use the SignUp class
  ));
}
