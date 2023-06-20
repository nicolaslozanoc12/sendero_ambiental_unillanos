import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var numEstacion=1;
    return MaterialApp(
      home: Scaffold(

        body: Container(
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
              Container(
                margin:EdgeInsets.fromLTRB(0, 0, 0, 150),
                child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Fauna"),
                )
              ),
              Container(
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Fauna01"),
                  )
              ),
              Container(
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Fauna02"),
                  )
              ),
              Container(
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Fauna03"),
                  )
              )

            ],
          ),
        ),
      ),
    );
  }
}