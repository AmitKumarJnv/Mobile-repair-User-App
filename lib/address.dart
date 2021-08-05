import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:mam_project/dashBoard.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:email_validator/email_validator.dart';


class Address extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  var _status = true;

  var _mainSpacing = 40.0;
  var _interspacing = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("SET ADDRESS"),
      ),
      body:SingleChildScrollView(
        child: SafeArea(
          bottom: true,
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/address.jpg'),
                      fit:BoxFit.cover,
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0,0.0,15.0,0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height:_interspacing),
                      TextFormField(
                        decoration: InputDecoration(
                            floatingLabelBehavior:FloatingLabelBehavior.always,
                            labelText: "ADDRESS",
                            labelStyle: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )
                        ),
                        validator: (value){
                          if(value.isEmpty)
                          {
                            return 'Please enter some text';
                          }
                          else if(!EmailValidator.validate(value)){
                            return 'Please Enter a Valid E-mail ID';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: _interspacing),
                      Text(
                        'ADD MORE DETAILS',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      SizedBox(height: _interspacing),
                      TextFormField(
                        decoration: InputDecoration(
                            floatingLabelBehavior:FloatingLabelBehavior.always,
                            labelText: "HOUSE / FLAT NO.",
                            labelStyle: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )
                        ),
                        validator: (value){
                          if(value.isEmpty)
                          {
                            return 'Please enter some text';
                          }
                          else if(!EmailValidator.validate(value)){
                            return 'Please Enter a Valid E-mail ID';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: _interspacing),
                      TextFormField(
                        decoration: InputDecoration(
                            floatingLabelBehavior:FloatingLabelBehavior.always,
                            labelText: "LANDMARK",
                            labelStyle: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )
                        ),
                        validator: (value){
                          if(value.isEmpty)
                          {
                            return 'Please enter some text';
                          }
                          else if(!EmailValidator.validate(value)){
                            return 'Please Enter a Valid E-mail ID';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: _interspacing),
                      Text(
                        'TAG AS',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      SizedBox(height: _interspacing),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 1,
                            child: FlatButton.icon(
                                onPressed: (){},
                                icon: Icon(
                                  Icons.home,
                                  size: 30.0,
                                ),
                                label: Text(
                                  "HOME",
                                ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: FlatButton.icon(
                              onPressed: (){},
                              icon: Icon(
                                Icons.apartment_outlined,
                                size: 30.0,
                              ),
                              label: Text(
                                "OFFICE",
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: FlatButton.icon(
                              onPressed: (){},
                              icon: Icon(
                                Icons.outlined_flag_sharp,
                                size: 30.0,
                              ),
                              label: Text(
                                "OTHER",
                              ),
                            ),
                          ),
                        ],
                      ),


                    ],
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
          child: Row(
            children: [
              FlatButton(
                onPressed: (){

                    Navigator.pushNamed(context,'/register');

                },
                padding: EdgeInsets.fromLTRB(120, 10, 10, 10),
                child: Text(
                  "SAVE & CONTINUE",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_forward_sharp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        color: Colors.deepPurpleAccent,
      ),
    );
  }
}
