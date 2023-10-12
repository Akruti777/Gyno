import 'package:flutter/material.dart';

class username extends StatefulWidget {
  const username({super.key});

  @override
  State<username> createState() => _usernameState();
}

class _usernameState extends State<username> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // Light Pink Circle
            Container(

              width: 350.0,
              height: 350.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink[50],
              ),
            ),
            // Username and Password Input Fields
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 300.0,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        filled: true,
                        fillColor: Colors.pink[100],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 300.0,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        filled: true,
                        fillColor: Colors.pink[100],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
