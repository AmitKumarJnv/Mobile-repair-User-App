import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class confirmBooking extends StatefulWidget {


  @override
  _confirmBookingState createState() => _confirmBookingState();
}

class _confirmBookingState extends State<confirmBooking> {
  DateTime date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title:Text('CONFIRM BOOKING'),
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
                TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.add_a_photo_sharp,
                        ),
                        onPressed: (){},
                      ),
                      hintText:'TAKE DEVICE PHOTOS',
                      labelStyle: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColorLight,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 150.0,
                  color: Colors.blueGrey,
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
                      labelText: "PICK UP ADDRESS",
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
                FlatButton.icon(
                  onPressed: (){
                    Navigator.pushNamed(context,'/address');
                  },
                  icon:Icon(
                    Icons.my_location_sharp,
                  ),
                  label: Text(
                    'Use Your Current GPS Location',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: IconButton(

                        icon: Icon(
                          Icons.date_range_rounded,
                        ),
                        onPressed: ()=>pickDate(context),
                    ),
                      floatingLabelBehavior:FloatingLabelBehavior.always,
                      labelText: "CHOOSE PICK UP DATE",
                      hintText: getText(),
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
                      prefixIcon: IconButton(
                        icon: Icon(
                          Icons.alarm,
                        ),
                        onPressed: (){
                        },
                      ),
                      floatingLabelBehavior:FloatingLabelBehavior.always,
                      labelText: "CHOOSE PICK UP TIME",
                      labelStyle: TextStyle(
                        fontSize: 20.0,
                        color: Colors.deepPurple,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )
                  ),
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
              Navigator.pushNamed(context,'/confirmation');
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
  Future pickDate(BuildContext context) async{
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: date ?? initialDate,
      firstDate: DateTime(DateTime.now().year-5),
      lastDate: DateTime(DateTime.now().year+5),
    );
    if (newDate == null)
      return;
    setState(() {
      date=newDate;
    });

  }

  String getText(){
    if(date==null)
      return 'Select Date';
    else
      //return '${date.day}/${date.month}/${date.year}';
    return DateFormat('dd/MM/yyyy').format(date);
  }
}


