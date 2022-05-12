import 'package:flutter/material.dart';
import 'package:test_app/loginpage.dart';
class CarDetailsPage extends StatefulWidget {
  const CarDetailsPage({Key? key}) : super(key: key);

  @override
  State<CarDetailsPage> createState() => _CarDetailsPageState();
}

class _CarDetailsPageState extends State<CarDetailsPage> {
  List<String> items = <String> ['Suv','Elegant','Simple', 'Motorcycle'];
  String dropdownValue = 'Suv';

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
                  padding: EdgeInsets.fromLTRB(15, 100, 0, 0),
                  child: Text("Enter",
                    style: TextStyle(fontSize: 50,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 160, 0, 0),
                  child: Text("Car Details",
                    style: TextStyle(fontSize: 50,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(300, 130, 0, 0),
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
            padding: EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: "Car Brand",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff44bd32)),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Car Model",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff44bd32)),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Car Number",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff44bd32)),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text('Select Texi Type',style: TextStyle(color: Colors.grey),)
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,),

                  child:DropdownButton<String>(
                    iconSize: 36,
                    icon: Icon(Icons.arrow_drop_down, color: Colors.black,),
                    onChanged: (String? Value){
                      setState(() {
                        dropdownValue = Value!;
                      });
                    },
                    value: dropdownValue,
                    isExpanded: true,
                      items: items.map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }
                      ).toList(),
                  ),
                  ),

                SizedBox(height: 80,),
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
                        child: Text("SignUp", style: TextStyle(
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Center(
                        child: Text("Back to Login", style: TextStyle(
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


