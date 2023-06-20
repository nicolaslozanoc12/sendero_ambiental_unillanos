import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var numEstacion=1;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                  'https://c.files.bbci.co.uk/4F6C/production/_94223302_mediaitem93780216.jpg',
                ),
                fit: BoxFit.cover,
                repeat: ImageRepeat.repeat,
                ),
               ),
               child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 150),
                          width: 200,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: (){
                            },
                            child: Text("Estación ${numEstacion}",style: TextStyle(fontSize: 25)),
                            key: key ,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,

                      children: [
                        Container(
                          width: 150,
                          height: 110,
                          margin: EdgeInsets.symmetric(vertical: 100),
                          child: ElevatedButton(
                            onPressed: (){}
                            , child: Text("Flora",style: TextStyle(fontSize: 25)),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 110,
                          margin: EdgeInsets.symmetric(vertical: 25),
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text("Fauna", style: TextStyle(fontSize: 25),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,

                      children: [
                        Container(
                          width: 370,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text("Ver Mapa", style: TextStyle(fontSize: 25)),
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
    );
  }
}