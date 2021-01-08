import 'package:brew_crew_remake/shared/widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {

  final Function toggleView;
  SignUp({ this.toggleView });
  
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
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
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (value) => value.isEmpty ? 'Please enter Email!' : null,
                decoration: decorationInput.copyWith(hintText: 'Email'),
                autofocus: true,
              ),
              SizedBox(height: 20),
              TextFormField(
                validator: (value) => value.length < 6 ? 'Please enter password as least 6+' : null,
                decoration: decorationInput.copyWith(hintText: 'Password'),
                autofocus: true,
              ),
              SizedBox(height: 20),
              RaisedButton(
                color: Colors.pink[400],
                onPressed: () {
                  if(!_formKey.currentState.validate()) {
                    
                  }
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white
                  )
                ),
              )
            ],
          )
        )
      ),
    );
  }
}