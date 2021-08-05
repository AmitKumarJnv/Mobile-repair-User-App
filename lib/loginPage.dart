import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:email_validator/email_validator.dart';


class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  var _mainSpacing = 100.0;
  var _interspacing = 30.0;
  var _status = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: _mainSpacing),
                  Center(
                    child: Text(
                        'LOGIN HERE',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Theme.of(context).primaryColor,
                        ),
                    ),
                  ),
                  SizedBox(height: _mainSpacing),
                  Form(
                    key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                labelText: "USERNAME",
                                labelStyle: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.blue,
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
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                labelText: "PASSWORD",
                                labelStyle: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.blue,
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
                              return null;
                            },
                            obscureText: _status,
                          ),
                          SizedBox(height: _interspacing),
                          FlatButton(
                            onPressed: (){
                              if(_formKey.currentState.validate()){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content:Text('Processing Data')),
                                );
                              }
                            },
                            height:60.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            color: Colors.blue,
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child:Center(
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                ),
                                Container(
                                  height: 40.0,
                                  width: 40.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),

                          ),
                        ],
                      ),
                  ),

                  SizedBox(height: _interspacing),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't Have an Account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 10),
                      TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context,'/register');
                        },
                        child: Text(
                          "REGISTER HERE",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
