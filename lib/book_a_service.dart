import 'package:flutter/material.dart';

class book_a_service extends StatefulWidget {


  @override
  _book_a_serviceState createState() => _book_a_serviceState();
}

class _book_a_serviceState extends State<book_a_service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title:Text('BOOK A SERVICE'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0,15.0,15.0,0.0),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0,20.0,15.0,0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        onPressed: (){
                        },
                      ),
                      floatingLabelBehavior:FloatingLabelBehavior.always,
                      labelText: "SELECT MOBILE BRAND",
                      labelStyle: TextStyle(
                        fontSize: 20.0,
                        color: Colors.deepPurple,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        onPressed: (){
                        },
                      ),
                      floatingLabelBehavior:FloatingLabelBehavior.always,
                      labelText: "SELECT MOBILE MODEL",
                      labelStyle: TextStyle(
                        fontSize: 20.0,
                        color: Colors.deepPurple,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )
                  ),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.search,
                        ),
                        onPressed: (){
                        },
                      ),
                      floatingLabelBehavior:FloatingLabelBehavior.always,
                      labelText: "SELECT ISSUE TYPE",
                      labelStyle: TextStyle(
                        fontSize: 20.0,
                        color: Colors.deepPurple,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 400.0,
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: Center(
          child: FlatButton(
            onPressed: (){
              Navigator.pushNamed(context,'/confirmBooking');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'CONFIRM BOOKING',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
        color: Colors.deepPurpleAccent,
      ),
    );
  }
}
