import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Form(
          child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 40)),
          Padding(padding: EdgeInsets.only(top: 30)),
          Padding(padding: EdgeInsets.only(bottom: 30)),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: "Email Address"),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Enter your email address';
                } else if (!value.contains('@')) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                print("Login pressed.");
                print(emailController.text);
                print(passwordController.text);
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      )),
      // Column(
      //   children: <Widget>[
      //     SizedBox(
      //       height: 20,
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: TextFormField(
      //         decoration: const InputDecoration(
      //           icon: Icon(Icons.email),
      //           hintText: 'Email',
      //           labelText: 'Email *',
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: TextFormField(
      //         decoration: const InputDecoration(
      //           icon: Icon(Icons.lock),
      //           hintText: 'Password',
      //           labelText: 'Password *',
      //         ),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 5,
      //     ),
      //     RaisedButton(
      //       onPressed: () {},
      //       child: const Text('Sign In', style: TextStyle(fontSize: 20)),
      //     )
      //   ],
      // ),
    );
  }
}
