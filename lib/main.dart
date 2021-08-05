import 'package:flutter/material.dart';
import 'package:mam_project/book_a_service.dart';
import 'package:mam_project/confirmBooking.dart';
import 'package:mam_project/conformation.dart';
import 'package:mam_project/dashBoard.dart';
import 'package:mam_project/loginPage.dart';
import 'package:mam_project/registerPage.dart';
import 'package:mam_project/address.dart';

void main()=>runApp(MaterialApp(
  routes: {

    '/':(context)=>confirmBooking(),
    '/login':(context)=>loginPage(),
    '/register':(context)=>RegisterPage(),
    '/dashBoard':(context)=>dashBoard(),
    '/address':(context)=>Address(),
    '/confirmation':(context)=>conformation(),
    '/confirmBooking':(context)=>confirmBooking(),
    '/bookAService':(context)=>book_a_service(),
  },
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor:Colors.indigo
  ),

));

