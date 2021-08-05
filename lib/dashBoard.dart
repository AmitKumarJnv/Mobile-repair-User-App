import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dashBoard extends StatefulWidget {
  const dashBoard({Key key}) : super(key: key);

  @override
  _dashBoardState createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Container(

        decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage('images/address.jpg'),
            fit:BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 350.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "GET YOUR PHONE REPAIRED",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Center(
                        child: Text(
                          "AT YOUR DOOR STEP",
                          style: TextStyle(
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 70.0),
                      FlatButton(
                        onPressed: (){
                          Navigator.pushNamed(context,'/bookAService');
                        },
                        height:60.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Theme.of(context).primaryColor,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child:Center(
                              child: Text(
                                'BOOK A SERVICE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
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
              SizedBox(height: 210.0),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 200,
                      width: 115,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 120,
                                width: 90,
                                image: AssetImage('images/freeDelivery.png'),
                            ),
                            Text('FREE PICKUP &'),
                            Text('DELIVERY'),
                          ],
                        ),
                    ),
                    Container(
                      height: 200,
                      width: 115,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            height: 120,
                            width: 90,
                            image: AssetImage('images/quality.png'),
                          ),
                          Text('Quality'),
                          Text('Repairing'),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 115,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            height: 120,
                            width: 90,
                            image: AssetImage('images/bestPrice.png'),
                          ),
                          Text('Lowest'),
                          Text('Price'),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.person,
                ),
              ),
              accountName: Text('Amit Kumar Singh'),
              accountEmail: Text("jnvamit1666@gmail.com"),
            ),
            ListTile(
              title: Text("Form Validatiion"),
              leading: Icon(Icons.format_align_left),
              tileColor: Colors.purpleAccent,
              trailing: Icon(Icons.forward),
              onTap: ()=>Navigator.of(context).pushNamed("/fv"),
            ),
            ListTile(
              title: Text("gridView"),
              leading: Icon(Icons.grid_on_outlined),
              tileColor: Colors.purple,
              trailing: Icon(Icons.forward),
              onTap: ()=>Navigator.of(context).pushNamed("/gv"),
            ),
            ListTile(
              title: Text("TextFieldDemo"),
              leading: Icon(Icons.text_fields),
              tileColor: Colors.deepPurple,
              trailing: Icon(Icons.forward),
              onTap: ()=>Navigator.of(context).pushNamed("/tfd"),
            ),
            ListTile(
              title: Text("close"),

              tileColor: Colors.purpleAccent,

              trailing: Icon(Icons.close),
              onTap: ()=>Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
