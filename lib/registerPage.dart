import 'package:flutter/material.dart';
import 'package:mam_project/dashBoard.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:email_validator/email_validator.dart';
import 'package:mam_project/address.dart';



class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _formKey = GlobalKey<FormState>();
  var _status = true;

  var _mainSpacing = 40.0;
  var _interspacing = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body:SingleChildScrollView(
        child: SafeArea(
          bottom: true,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: _mainSpacing),
                    Center(
                      child: Text(
                        'REGISTER NEW MEMBER',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(height: _mainSpacing),
                    Form(key: _formKey,
                        child:Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              floatingLabelBehavior:FloatingLabelBehavior.always,
                              labelText: "EMAIL ID",
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
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _status ? Icons.remove_red_eye_outlined :Icons.shield,
                                ),
                                onPressed: (){
                                  setState(() {
                                    _status=!_status;
                                  });
                                },
                              ),
                              floatingLabelBehavior:FloatingLabelBehavior.always,
                              labelText: "PASSWORD",
                              labelStyle: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              )
                          ),
                          obscureText: _status,
                          validator: (value){
                            if(value.isEmpty)
                            {
                              return 'Please enter some text';
                            }
                            else if(value.length<3)
                            {
                              return 'Password Too Short';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: _interspacing),
                        TextFormField(
                          decoration: InputDecoration(
                              floatingLabelBehavior:FloatingLabelBehavior.always,
                              suffixIcon: TextButton(
                                onPressed: (){},
                                child: Text(
                                  'Verify',
                                ),
                              ),
                              labelText: "MOBILE NUMBER",
                              labelStyle: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              )
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value){
                            if(value.isEmpty)
                            {
                              return 'Please enter some text';
                            }
                            else if(value.length !=10)
                            {
                              return 'Number Length Should be 10';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: _interspacing),


                      ],
                    )),
                  SizedBox(height: _interspacing),
                  Text(
                    'ENTER OTP FOR VERIFY MOBILE NUMBER',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                    SizedBox(height: _interspacing),
                    OTPTextField(
                      length: 4,
                      width: 200.0,
                      fieldWidth: 60,
                      style: TextStyle(
                          fontSize: 17
                      ),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.underline,
                      onCompleted: (pin) {
                        print("Completed: " + pin);
                      },
                    ),
                    SizedBox(height: _interspacing),
                    Text(
                      'ADD YOUR ADDRESS',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(height: _interspacing),
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
                            color: Colors.black,
                          ),
                        ),
                    ),
                  ],
                ),
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
                  if(_formKey.currentState.validate()){
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   SnackBar(content:Text(''
                    //       'Processing Data')),
                    //);
                    Navigator.pushNamed(context,'/dashBoard');
                  }

                },
                padding: EdgeInsets.fromLTRB(150, 10, 100, 10),
                  child: Text(
                    "CONTINUE",
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
