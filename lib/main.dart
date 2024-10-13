import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen());
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildHeader(),
            SizedBox(height: 50.0),
            _buildTitle(),
            SizedBox(height: 20.0),
            _buildSubtitle(),
            SizedBox(height: 20.0),
            _buildTextField('User Name', false),
            SizedBox(height: 20.0),
            _buildTextField('Password', true),
            SizedBox(height: 10.0),
            _buildForgotPassword(),
            SizedBox(height: 20.0),
            _buildLoginButton(),
            SizedBox(height: 20.0),
            _buildSignUpPrompt(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Meu App',
            style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Container(
            color: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              'DEBUG',
              style: TextStyle(color: Colors.white, fontSize: 12.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      'Bem Vindo!',
      style: TextStyle(color: Colors.blue, fontSize: 32.0, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildSubtitle() {
    return Text(
      'Sign in',
      style: TextStyle(color: Colors.black, fontSize: 18.0),
    );
  }

  Widget _buildTextField(String label, bool obscureText) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(border: OutlineInputBorder(), labelText: label),
    );
  }

  Widget _buildForgotPassword() {
    return Text(
      'Forgot Password',
      style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
    );
  }

  Widget _buildLoginButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Login'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
      ),
    );
  }

  Widget _buildSignUpPrompt() {
    return Text.rich(
      TextSpan(
        text: 'Does not have account? ',
        style: TextStyle(color: Colors.black),
        children: [
          TextSpan(
            text: 'Sign in',
            style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}

