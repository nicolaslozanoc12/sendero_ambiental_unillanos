import 'package:flutter/material.dart';

void main() => runApp(Estacion8());

class Estacion8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.height * 1;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/estacion8.png'),
              fit: BoxFit.cover,
              repeat: ImageRepeat.repeat,
              colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.8), BlendMode.dstATop), // Agrega transparencia aquí
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => InfoEstacion(),
                                ),
                              );

                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen.shade300), // Cambia el color aquí
                            ),
                            child: Text("Estación 8",style: TextStyle(fontSize: 25),
                            key: key ,
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
                          width: 150,
                          height: 110,
                          margin: EdgeInsets.symmetric(vertical: 25),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Flora(),
                                ),
                              );

                            },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen.shade300), // Cambia el color aquí
                              ),
                             child: Text("Flora",style: TextStyle(fontSize: 25)),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 110,
                          margin: EdgeInsets.symmetric(vertical: 25),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Fauna(),
                                ),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen.shade300), // Cambia el color aquí
                            ),
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
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen.shade300), // Cambia el color aquí
                            ),
                            child: Text("Ver Mapa", style: TextStyle(fontSize: 25)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );

  }
}
class InfoEstacion extends StatelessWidget {
  const InfoEstacion({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
              child: ListView(
                children: [
                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(vertical: 70),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen.shade300, // Color deseado
                    ),
                    child: Center(
                      child: Text(
                          "GRANJA", style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: Center(
                        child: Text(
                          "La granja es un área dedicada a actividades de producción agrícola y pecuaria. Lugar de aprendizaje para buenas practicas de manejo productivo y ambiental. Cuenta con vivero, parcelas demostrativas, potreros, porquerizas y zoocriadero.",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,)
                    ),
                  ),
                  Container(
                      width: 300,
                      height: 300,
                      margin: EdgeInsets.symmetric(vertical: 30),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/estacion8.png'),
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
                              image: AssetImage('assets/images/ODS13.png'),
                            )
                        ),

                      )
                    ],
                  )

                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.lightGreen,
              child: const Icon(Icons.exit_to_app),

            )
        )
    );
  }
}
class Fauna extends StatelessWidget {
  const Fauna({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
            child: ListView(
              children: [
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(vertical:70),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/estacion8.png'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.dstATop), // Agrega transparencia aquí

                      )
                  ),
                  child: Center(
                    child: Text("FAUNA", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold), ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical:10,horizontal: 70),
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: (){},
                    child: Text("Mono ardilla",style: TextStyle(fontSize: 25)),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical:10,horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: (){},
                    child: Text("Cerdo doméstico",style: TextStyle(fontSize: 25)),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical:10,horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: (){},
                    child: Text("Gallo y gallina",style: TextStyle(fontSize: 25),),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical:10,horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: (){},
                    child: Text("Curíes",style: TextStyle(fontSize: 25)),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical:10,horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: (){},
                    child: Text("Conejo común",style: TextStyle(fontSize: 25)),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical:10,horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: (){},
                    child: Text("Cabra doméstica",style: TextStyle(fontSize: 25)),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical:10,horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: (){},
                    child: Text("Paca común",style: TextStyle(fontSize: 25)),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical:10,horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: (){},
                    child: Text("Zorro cangrejero",style: TextStyle(fontSize: 25)),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical:10,horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: (){},
                    child: Text("Ciervo",style: TextStyle(fontSize: 25)),
                  ),
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
      ),
    );
  }
}
class Flora extends StatelessWidget {
  const Flora({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
            child: ListView(
              children: [
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(vertical:70),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/estacion2.png'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.dstATop), // Agrega transparencia aquí

                      )
                  ),
                  child: Center(
                    child: Text("FLORA", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold), ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical:10,horizontal: 70),
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: (){},
                    child: Text("Myrtaceae",style: TextStyle(fontSize: 25)),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical:10,horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: (){},
                    child: Text("Fabaceae",style: TextStyle(fontSize: 25)),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical:10,horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: (){},
                    child: Text("Araliaceae",style: TextStyle(fontSize: 25)),
                  ),
                )

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
      ),
    );
  }
}
