import 'dart:ui';
import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image with Blur
          BlurredImage(imagePath: 'assets/BackgroundTheme.jpg'),

          SingleChildScrollView(
            child: Column(
              children: [
                // Add UI elements here to display user profile information
                // For example, you can use ListTile, CircleAvatar, etc.

                // Example: Displaying profile picture
                Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30), // Adjust the top value as per your needs
                    child: CircleAvatar(
                      radius: 50,
                      child: Icon(
                        Icons.person,
                        size: 80,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 25.0),
                  child: Text(
                    'MfarisZ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),

                // Example: Displaying full name
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0), // Add vertical spacing
                  child: ListTile(
                    title: Text(
                      'Full Name :',
                      style: TextStyle(color: Colors.white), // Set text color
                      textAlign: TextAlign.start, // Align title text to the left
                    ),
                    subtitle: FractionallySizedBox(
                      widthFactor: 1, // Adjust the width of the box (0.7 means 70% of the available space)
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Muhammad Sifulan Bin Sifulan',
                          style: TextStyle(fontSize: 12.0, color: Colors.white70), // Set text color
                          textAlign: TextAlign.start, // Align subtitle text to the left
                        ),
                      ),
                    ),
                  ),
                ),

                // Example: Displaying phone number
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0), // Add vertical spacing
                  child: ListTile(
                    title: Text(
                      'Phone Number :',
                      style: TextStyle(color: Colors.white), // Set text color
                      textAlign: TextAlign.start, // Align title text to the left
                    ),
                    subtitle: FractionallySizedBox(
                      widthFactor: 1, // Adjust the width of the box (0.7 means 70% of the available space)
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '011 1234 4567',
                          style: TextStyle(fontSize: 12.0, color: Colors.white70), // Set text color
                          textAlign: TextAlign.start, // Align subtitle text to the left
                        ),
                      ),
                    ),
                  ),
                ),

                // Example: Displaying email
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0), // Add vertical spacing
                  child: ListTile(
                    title: Text(
                      'Email :',
                      style: TextStyle(color: Colors.white), // Set text color
                      textAlign: TextAlign.start, // Align title text to the left
                    ),
                    subtitle: FractionallySizedBox(
                      widthFactor: 1, // Adjust the width of the box (0.7 means 70% of the available space)
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Sifulan123@gmail.com',
                          style: TextStyle(fontSize: 12.0, color: Colors.white70), // Set text color
                          textAlign: TextAlign.start, // Align subtitle text to the left
                        ),
                      ),
                    ),
                  ),
                ),

                // Example: Displaying password
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0), // Add vertical spacing
                  child: ListTile(
                    title: Text(
                      'Password :',
                      style: TextStyle(color: Colors.white), // Set text color
                      textAlign: TextAlign.start, // Align title text to the left
                    ),
                    subtitle: FractionallySizedBox(
                      widthFactor: 1, // Adjust the width of the box (0.7 means 70% of the available space)
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '**************',
                          style: TextStyle(fontSize: 12.0, color: Colors.white70), // Set text color
                          textAlign: TextAlign.start, // Align subtitle text to the left
                        ),
                      ),
                    ),

                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.grey, // Set the desired background color
                    ),
                  ),
                  child: Text('Edit'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BlurredImage extends StatelessWidget {
  final String imagePath;

  const BlurredImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust the sigma values for the desired blur effect
          child: Container(
            color: Colors.black.withOpacity(0.2), // Adjust the opacity for the desired blur intensity
          ),
        ),
      ],
    );
  }
}
