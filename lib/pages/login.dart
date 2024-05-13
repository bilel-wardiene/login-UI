import 'package:flutter/material.dart';
import 'package:login_ui/components/button.dart';
import 'package:login_ui/components/squareTile.dart';
import 'package:login_ui/components/textfield.dart';

class login extends StatelessWidget {
  login({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Icon(
                Icons.lock,
                size: 100,
              ),
              SizedBox(height: 50),
              Text(
                "welcome",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 25),
              MyWidget(
                controller: usernameController,
                hintText: "Username",
                obscureText: false,
              ),
              SizedBox(height: 10),
              MyWidget(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "forgot password",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Button(),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Or continue with",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  squareTile(imagePath: 'lib/images/google.png'),
                  SizedBox(width: 25),
                  squareTile(imagePath: 'lib/images/apple.png')
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?",style: TextStyle(color: Colors.grey[700]),),
                  SizedBox(width: 4),
                  Text("Register now",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
