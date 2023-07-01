import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'LogInPage.dart';

class RegisterPage extends StatefulWidget{
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nicknameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  File? _profileImage;

  Future<void> _pickProfileImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _profileImage = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,  // Set the background color to transparent
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/BackgroundTheme.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.only(left: 40, right: 40,),
          children: [

            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back_outlined, color: Colors.yellow[800],),
                iconSize: 25,
                padding: EdgeInsets.only(top: 20),
                onPressed: () {
                  Navigator.push( context,
                    MaterialPageRoute(builder: (context) => LoginPage()), //back or cancel register
                  );
                },
              ),
            ),

            SizedBox(height: 10.0),
            GestureDetector(
              onTap: _pickProfileImage,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[300],
                backgroundImage: _profileImage != null
                    ? FileImage(_profileImage!)
                    : null,
                child: _profileImage == null
                    ? Icon(
                  Icons.person,
                  size: 60,
                )
                    : null,
              ),
            ),


            SizedBox(height: 5.0),
            Container(
              padding: EdgeInsets.only(top: 5.0), // Adjust the top padding as per your requirement
              child: Text(
                'Upload Photo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11.0,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 15.0),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Full name',
                labelStyle: TextStyle(fontSize: 12.0), // Adjust the font size
                fillColor: Colors.white.withOpacity(0.3), // Set the input field fill color to white
                filled: true, // Enable filling the input field
              ),
              style: TextStyle(color: Colors.white60),
            ),

            SizedBox(height: 15.0),
            TextField(
              controller: nicknameController,
              decoration: InputDecoration(
                labelText: 'Nickname',
                labelStyle: TextStyle(fontSize: 12.0), // Adjust the font size
                fillColor: Colors.white.withOpacity(0.3),
                filled: true,
              ),
              style: TextStyle(color: Colors.white60),
            ),

            SizedBox(height: 15.0),
            TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                labelStyle: TextStyle(fontSize: 12.0), // Adjust the font size
                fillColor: Colors.white.withOpacity(0.3),
                filled: true,
              ),
              style: TextStyle(color: Colors.white60),
            ),


            SizedBox(height: 15.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(fontSize: 12.0), // Adjust the font size
                fillColor: Colors.white.withOpacity(0.3),
                filled: true,
              ),
              style: TextStyle(color: Colors.white60),
            ),

            SizedBox(height: 15.0),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(fontSize: 12.0), // Adjust the font size
                fillColor: Colors.white.withOpacity(0.3),
                filled: true,
              ),
              style: TextStyle(color: Colors.white60),
            ),

            SizedBox(height: 30.0),
            OutlinedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size(30, 30)), // Adjust the width and height as per your requirement
                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent), // Adjust the color as per your requirement
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // Adjust the corner radius as per your requirement
                  ),
                ),
              ),
              onPressed: () {
                String name = nameController.text;
                String email = emailController.text;
                String nickname = nicknameController.text;
                String phoneNumber = phoneNumberController.text;
                String birthday = passwordController.text;

                // Process the collected user details here

                // Example: Display a notification and navigate back to the login page

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Center(
                      child: Text('Registration completed !'),
                    ),
                    duration: Duration(seconds: 2),
                    backgroundColor: Colors.green,
                  ),
                );
                // Navigate back to the login page
                Future.delayed(Duration(seconds: 2), () {
                  Navigator.pop(context);
                });
              },
              child: Container(
                width: 150, // Set the desired width for the button
                height: 50, // Set the desired height for the button
                child: Center(
                  child: Text('R e g i s t e r',
                    style:
                    TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                    ), // Change the button text color here
                  ),
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
