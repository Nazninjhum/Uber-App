import 'package:flutter/material.dart';
import 'package:test_app/cardetails.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                  padding: EdgeInsets.fromLTRB(15, 50, 0, 0),
                  child: Text("Sign Up",
                    style: TextStyle(fontSize: 50,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(210, 30, 0, 0),
                  child: Text(".",
                    style: TextStyle(fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff44bd32),
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
                TextField(
                    decoration: InputDecoration(
                        labelText: "First Name",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff44bd32)),
                        )
                    ),
                  ),
                SizedBox(height: 15,),
                TextField(
                    decoration: InputDecoration(
                        labelText: "Last Name",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff44bd32)),
                        )
                    ),
                  ),
                SizedBox(height: 15,),
                TextField(
                    decoration: InputDecoration(
                        labelText: "Address",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff44bd32)),
                        )
                    ),
                  ),
                SizedBox(height: 15,),
                TextField(
                    decoration: InputDecoration(
                      labelText: "Phone Number",
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
                SizedBox(height: 15,),
                TextField(
                    decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff44bd32)),
                        )
                    ),
                  ),
                SizedBox(height: 15,),
                TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
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
                SizedBox(height: 40,),
                Container(
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(30),
                    shadowColor: Colors.greenAccent,
                    color: Color(0xff44bd32),
                    elevation: 7,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CarDetailsPage()));
                      },
                      child: Center(
                        child: Text("Continue", style: TextStyle(
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
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Center(
                        child: Text("Go Back", style: TextStyle(
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
