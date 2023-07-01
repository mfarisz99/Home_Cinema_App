import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'MainPage/BottomBar.dart';
import 'RegisterPage.dart';
import 'dart:ui';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Color _userTextColor = Colors.yellow;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/035806bf16d1b69.jpg'),
            // Replace with your own image path
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black26.withOpacity(0.8),
              // Adjust the opacity to control the contrast level
              BlendMode.dstATop,
            ),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          // Adjust the sigmaX and sigmaY values for the desired blur intensity
          child: Container(
            color: Colors.black12.withOpacity(0.4),
            // Adjust the opacity for the desired blur intensity
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Image.asset(
                    'assets/TextLogIn4.png', // Replace with your own image path
                    width: 700, // Adjust the width as needed
                    height: 250, // Adjust the height as needed
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: Column(
                    children: [
                      TextField(
                        controller: _usernameController,
                        onChanged: (value) {
                          setState(() {

                            _userTextColor = value.isNotEmpty ? Colors.yellow : Colors.grey;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(fontSize: 14.0,
                              color: Colors.grey[500]),

                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        controller: _passwordController,
                        onChanged: (value) {
                          setState(() {

                            _userTextColor = value.isNotEmpty ? Colors.red : Colors.grey;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(fontSize: 14.0,
                              color: Colors.grey[500]),
                        ),
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                      ),
                      SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: () {
                          String username = _usernameController.text;
                          String password = _passwordController.text;

                          if (username.isEmpty || password.isEmpty) {
                            Fluttertoast.showToast(
                              msg: "Please enter your username and password!",
                              gravity: ToastGravity.BOTTOM,
                              textColor: Colors.white70,
                              fontSize: 10,
                              timeInSecForIosWeb: 2,
                              backgroundColor: Colors.red,
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomBar()),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          // Set the background color to transparent
                          shadowColor: Colors
                              .transparent, // Optional: Set the shadow color to transparent
                        ),
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      SizedBox(
                        width: 180.0,
                        height: 30.0,
                        child: RawMaterialButton(
                          onPressed: () {
                            // Perform Google login logic here
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          fillColor: Colors.red[400],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.email_outlined),
                              SizedBox(width: 8.0),
                              Text(
                                'Login with Google',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 5.0),
                      SizedBox(
                        width: 180.0,
                        height: 30.0,
                        child: RawMaterialButton(
                          onPressed: () {
                            // Perform Facebook login logic here
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          fillColor: Colors.blue[400],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.facebook),
                              SizedBox(width: 8.0),
                              Text(
                                'Login with Facebook',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                        },
                        child: Text(
                          'Don\'t have an account? Register now!',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.white24,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
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





