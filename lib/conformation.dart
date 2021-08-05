import 'package:flutter/material.dart';

class conformation extends StatelessWidget {
  const conformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        bottom: true,
        top: true,
        child:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300.0,
                decoration: BoxDecoration(

                  image: DecorationImage(
                    image: AssetImage('images/confirm.png'),
                    fit:BoxFit.cover,
                  ),

                ),
              ),
              Text(
                  "Your Mobile service Request",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.blue,
                  ),
              ),
              Text(
                "is sent Successfully.",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.fromLTRB(40.0,0.0,0.0,40.0),
                child: Row(

                  children: [
                    Icon(
                      Icons.thumb_up,
                      size: 60.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The Nearby Technician will",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          "respond you shortly..",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
          Container(
            height: 60.0,
            width: 400.0,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.deepPurple,
                ),
                borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            child:FlatButton(
              onPressed: (){

              },
              height:60.0,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child:Center(
                    child: Text(
                      'GOTO BOOKING STATUS',
                      style: TextStyle(
                          fontSize: 18.0
                      ),
                    ),
                  ),
                  ),
                  Container(
                    height: 40.0,
                    width: 20.0,

                    child: Icon(
                      Icons.arrow_forward_outlined,

                    ),
                  )
                ],
              ),

            ),
          ),
            ],
          ),
        ),
      ),

    );
  }
}
