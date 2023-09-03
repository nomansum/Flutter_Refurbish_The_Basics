import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hello, Welccccome Back",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Login to continue",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Username",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                fillColor: Colors.white.withOpacity(0.5),
                filled: true),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                fillColor: Colors.white.withOpacity(0.5),
                filled: true),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  print("forgot clicked!");
                },
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                child: Text("Forgot Password!")),
          ),
          SizedBox(
            width: 250,
            child: ElevatedButton(
                onPressed: () {
                  print("Log in Clicked");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black),
                child: Text("Log In")),
          ),
          SizedBox(
            height: 62,
          ),
          Text(
            "Or Sign in with",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              print("Google Is Clicked");
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/images/google1.png',
                  width: 22,
                  height: 22,
                ),
                Text(" Login With Google")
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print("Facebook Is Clicked");
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/images/facebook.png',
                  width: 22,
                  height: 22,
                ),
                Text(" Login With Facebook")
              ],
            ),
          ),
          Row(
            children: [
              Text("Don't Have Account? "),
              TextButton(onPressed: () {}, child: Text("Sign Up"))
            ],
          )
        ],
      ),
    );
  }
}
