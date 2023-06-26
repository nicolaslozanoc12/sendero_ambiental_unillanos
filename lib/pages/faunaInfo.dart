import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sendero_ambiental_unillanos/database/models.dart';
import 'package:sendero_ambiental_unillanos/database/senderoDatabase.dart';
void main() => runApp(InfoEstacion());
class InfoEstacion extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
              child: ListView(
                children:[
                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(vertical:70),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen.shade300, // Color deseado
                    ),
                    child: Center(
                      child: Text("MONO ARDILLA COMUN", style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text("Es un primate neotropical perteneciente a la familia Cebidae. Al igual que todos los monos ardilla, posee cola larga, no prensil, con la porción terminal de color negro. ", style: TextStyle(fontSize: 18), textAlign: TextAlign.center,)
                    ),
                  ),
                  Container(
                      width: 300,
                      height: 300,
                      margin: EdgeInsets.symmetric(vertical:30),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/monoArdilla.png'),
                          )
                      )
                  ),

                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                Navigator.pop(context);
              },
              backgroundColor: Colors.lightGreen,
              child: const Icon(Icons.exit_to_app),

            )
        )
    );
  }

}