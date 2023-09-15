// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Text(
                  'Create an account to join our network',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Firstname',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: const Color.fromARGB(186, 255, 255, 255),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Lastname',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: const Color.fromARGB(186, 255, 255, 255),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: const Color.fromARGB(186, 255, 255, 255),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: const Color.fromARGB(186, 255, 255, 255),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black,
                      ),
                      child: Text('Signup')),
                ),
                Spacer(),
                Text(
                  'or sign up with',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Google is clicked');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Signup with Google'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Signup with Facebook');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
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
                        Text('Signup with Facebook')
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.amber,
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
