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
                        child: Text("CASCO DE VACA", style: TextStyle(fontSize: 25)),
                    ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Center(
                    child: Text("Este lugar es un oscioecosistema de docencia cercano a la clinica veterinaria", style: TextStyle(fontSize: 18), textAlign: TextAlign.center,)
                  ),
                ),
                Container(
                  width: 300,
                  height: 300,
                    margin: EdgeInsets.symmetric(vertical:30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/estacion1.png'),
                    )
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/ODS4.png'),
                            )
                        )
                    ),
                    Container(
                      width: 70,
                      height: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/ODS12.png'),
                            )
                        ),

                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/ODS15.png'),
                          )
                      ),

                    )
                  ],
                )

              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.lightGreen,
            child: const Icon(Icons.exit_to_app),

          )
       )
    );
  }

  }