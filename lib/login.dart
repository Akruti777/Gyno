import 'package:flutter/material.dart';
import 'package:gyno_test2/username_pswd.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.teal[900],
          ),
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 0.0),
                  width: 350,
                  height: 350,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pink[100],
                  ),
                ),
                Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    LoginButton('Doctor', Colors.pinkAccent),
                    SizedBox(height: 30),
                    LoginButton('Patient', Colors.pinkAccent)

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String userType;
  final Color buttonColor;

  LoginButton(this.userType, this.buttonColor);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if(userType=='Doctor'){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>username()));
        }
        print('Login as a $userType');
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
      ),
      child: Text(
        'Login as $userType',
        style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
