import 'package:flutter/material.dart';
import 'package:test_app/Signup.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
                    child: Text("Uber",
                      style: TextStyle(fontSize: 80,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 185, 0, 0),
                    child: Text("Driver",
                      style: TextStyle(fontSize: 80,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(250, 185, 0, 0),
                    child: Text(".",
                      style: TextStyle(fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff44bd32),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 300, 0, 0),
                    child: Text("Taxi Driver Applicaltion",
                      style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
           Container(
              padding: EdgeInsets.only(top: 35, left: 20, right: 20),
              child: Column(
                children: [
                  Card(
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "EMAIL",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff44bd32)),
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Card(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "PASSWORD",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff44bd32)),
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    alignment: Alignment(1, 0),
                    padding: EdgeInsets.only(top: 15, left: 20),
                    child: InkWell(
                      child: Text("Forgot Password", style: TextStyle(
                        color: Color(0xff44bd32),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(30),
                      shadowColor: Colors.greenAccent,
                      color: Color(0xff44bd32),
                      elevation: 7,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text("Login", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(30),
                      shadowColor: Colors.greenAccent,
                      color: Colors.black,
                      elevation: 7,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SignupPage()));
                        },
                        child: Center(
                          child: Text("Register", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}



