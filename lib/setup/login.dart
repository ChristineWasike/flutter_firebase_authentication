import 'package:firebase_authentication/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class _SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<_SignIn> {
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Padding(padding: EdgeInsets.only(bottom: 30)),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Email',
                  labelText: 'Email *',
                ),
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
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'Password',
                  labelText: 'Password *',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please Enter your password';
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        )),
      );
    
    
  }
}
