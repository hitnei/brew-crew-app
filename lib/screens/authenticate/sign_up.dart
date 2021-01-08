import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {

  final Function toggleView;
  SignUp({ this.toggleView });
  
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text(
          'Register',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          )
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: (){
              widget.toggleView();
            },
            child: Text(
              'Sign In',
              style: TextStyle(
                fontSize: 16,
                color: Colors.brown[900]
              )
            ),
          )
        ]
      ),
    );
  }
}