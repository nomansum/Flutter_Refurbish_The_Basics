import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              "Hello, Welccccome Back",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Login to continue",
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
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
              height: 32,
            ),
            SizedBox(
              width: 250,
              height: 48,
              child: ElevatedButton(
                  onPressed: () {
                    print("Log in Clicked");
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black),
                  child: Text("Log In")),
            ),
            Spacer(),
            Text(
              "Or Sign in with",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  print("Google Is Clicked");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google1.png',
                      width: 22,
                      height: 22,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(" Login With Google")
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  print("Facebook Is Clicked");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/facebook.png',
                      width: 22,
                      height: 22,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(" Login With Facebook")
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  "Don't Have Account? ",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: Colors.amber),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ))
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
