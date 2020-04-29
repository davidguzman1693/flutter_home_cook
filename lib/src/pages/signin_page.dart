import 'package:flutter/material.dart';
import 'package:home_cook/src/pages/signup_page.dart';

class SignInPage extends StatefulWidget{

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignInPage>{

  bool _toggleVisibility = true;

  Widget _buildEmailTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Your email or username",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        )
      ),
    );
  }

  Widget _buildPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
        suffixIcon: IconButton(
            onPressed: (){
              setState(() {
                _toggleVisibility = !_toggleVisibility;
              });
            },
            icon: _toggleVisibility ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
          )
      ),
      obscureText: _toggleVisibility,

    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign in", 
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 100.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Forgotten Password?", 
                  style: TextStyle(fontSize: 18.0, color: Colors.blueAccent, fontWeight: FontWeight.bold),
                  ),
              ],
            ),
            SizedBox(height: 10.0,),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildEmailTextField(),
                    SizedBox(height: 20.0,),
                    _buildPasswordTextField()
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.blue
              ),
              child: Center(
                child: Text(
                  "Sign in",
                  style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
              ),
            ),
            Divider(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Color(0xFFBDC2CB), fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                SizedBox(width: 10.0,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignUpPage()));
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                )
              ],
            )
          ],
        ),
        ),
    );
  }
}