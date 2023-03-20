import 'package:flutter/material.dart';

class SuccessfulRegistrationPage extends StatelessWidget {
  static const routeName = '/successful-registration';

  const SuccessfulRegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Successful Registration'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50),
              Icon(
                Icons.check_circle,
                size: 100,
                color: Colors.green,
              ),
              SizedBox(height: 30),
              Text(
                'Registration Successful',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/login', (route) => false);
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
