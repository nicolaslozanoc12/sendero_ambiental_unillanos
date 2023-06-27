import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(Estacion2());

class Estacion2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.height * 1;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/estacion2.png'),
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
                            child: Text("Estación 2",style: TextStyle(fontSize: 25),
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
        debugShowCheckedModeBanner: false,
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
                          "MANEJO DE RESIDUOS SOLIDOS", style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: Center(
                        child: Text(
                          "Area construido para el manejo y separacion de residuos solidos. Lugar primordial para aprender sobre separación en la fuente y disposición final de los residuos, concientización sobre el consumo responsable y cuidado al medio ambiente",
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
                            image: AssetImage('assets/images/estacion2.png'),
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
      debugShowCheckedModeBanner: false,
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
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TuquitoRayado(),
                        ),
                      );

                    },
                    child: Text("Tuquito Rayado",style: TextStyle(fontSize: 25)),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical:10,horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PajaroSolitario(),
                        ),
                      );

                    },
                    child: Text("Andarríos Solitario",style: TextStyle(fontSize: 25)),
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
            child: ListView(
              children: [
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(vertical: 70),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/estacion1.png'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5),
                            BlendMode.dstATop), // Agrega transparencia aquí
                      )),
                  child: Center(
                    child: Text(
                      "FLORA",
                      style:
                      TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OchromaPyramidale(),
                        ),
                      );


                    },
                    child: Text("Ochroma",
                        style: TextStyle(fontSize: 25)),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Cecropia(),
                        ),
                      );

                    },
                    child: Text("Cecropia", style: TextStyle(fontSize: 25)),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ficus(),
                        ),
                      );

                    },
                    child: Text(
                      "Ficus",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CapaRoja(),
                        ),
                      );

                    },
                    child:
                    Text("Megaskepasma", style: TextStyle(fontSize: 25)),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Zingiberales(),
                        ),
                      );

                    },
                    child:
                    Text("Zingiberales", style: TextStyle(fontSize: 25)),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Musaceae(),
                        ),
                      );

                    },
                    child:
                    Text("Musaceae", style: TextStyle(fontSize: 25)),
                  ),
                  ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Anthurium(),
                        ),
                      );

                    },
                    child:
                    Text("Anthurium", style: TextStyle(fontSize: 25)),
                  ),
                ),

              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            backgroundColor: Colors.lightGreen,
            child: const Icon(Icons.exit_to_app),
          )),
    );
  }
}

class TuquitoRayado extends StatelessWidget {
  const TuquitoRayado({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
                      child: Text("TUQUITO RAYADO",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                          "Tiránido mediano encontrado comúnmente en dosel, bordes de bosque, sabanas y zonas urbanas en donde suelen posarse a menudo en ramas expuestas. ",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Container(
                      width: 300,
                      height: 300,
                      margin: EdgeInsets.symmetric(vertical: 30),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/tuquitoRayado.jpg'),
                          ))),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.lightGreen,
              child: const Icon(Icons.exit_to_app),
            )));
  }
}
class PajaroSolitario extends StatelessWidget {
  const PajaroSolitario({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
                      child: Text("ANDARRÍOS SOLITARIO",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                          "A menudo solo. Más pequeño que Lesser Yellowlegs, con patas más verdes. Generalmente gris por encima y blanco por abajo, moteado fino blanco en las alas y usualmente con anteojos blancos distintivos.",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Container(
                      width: 300,
                      height: 300,
                      margin: EdgeInsets.symmetric(vertical: 30),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/aguilaPescadora.jpg'),
                          ))),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.lightGreen,
              child: const Icon(Icons.exit_to_app),
            )));
  }
}
class OchromaPyramidale extends StatelessWidget {
  const OchromaPyramidale({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
                      child: Text("Balsa, Ochroma pyramidale",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                          "Conocida como balsa, madera de balso o guaguaripo, es un árbol de la familia Malvaceae. Es la única especie del género monotípico Ochroma y es nativa de México, Suramérica y el Caribe.",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Container(
                      width: 300,
                      height: 300,
                      margin: EdgeInsets.symmetric(vertical: 30),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/PezuñaDeBuey.jpg'),
                          ))),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.lightGreen,
              child: const Icon(Icons.exit_to_app),
            )));
  }
}
class Cecropia extends StatelessWidget {
  const Cecropia({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
                      child: Text("Yarumo, Yarumo blanco",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                          "Comprende unas 65 especies de árboles dioicos que se hallan en Centroamérica y Sudamérica. Son árboles, frecuentemente con raíces fulcrantes y poco ramificadas; tallos terminales normalmente huecos y septados, habitados por hormigas, con látex oscuro al secarse; hojas peltadas, ligera a profundamente palmatilobuladas; pecíolos teretes y acostillados, con pulvínulo grande en la base.",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Container(
                      width: 300,
                      height: 300,
                      margin: EdgeInsets.symmetric(vertical: 30),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/PezuñaDeBuey.jpg'),
                          ))),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.lightGreen,
              child: const Icon(Icons.exit_to_app),
            )));
  }
}
class Ficus extends StatelessWidget {
  const Ficus({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
                      child: Text("La higuera común",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                          "Contiene alrededor de 900 taxones específicos e infra-específicos aceptados de árboles, arbustos y trepadoras de la familia Moraceae, tribu monogenérica Ficeae, oriundas de la zona intertropical, con algunas de ellas distribuidas por las regiones templadas. Una de las características de las especies de este género es la secreción lechosa llamada látex que segregan al cortar o herir cualquier parte de la planta.",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Container(
                      width: 300,
                      height: 300,
                      margin: EdgeInsets.symmetric(vertical: 30),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/PezuñaDeBuey.jpg'),
                          ))),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.lightGreen,
              child: const Icon(Icons.exit_to_app),
            )));
  }
}
class CapaRoja extends StatelessWidget {
  const CapaRoja({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
                      child: Text("Capa roja",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                          "Es un género monotípico de plantas con flores perteneciente a la familia Acanthaceae. Su única especie: Megaskepasma erythrochlamys Lindau, se distribuye por Centroamérica y el norte de Sudamérica. Es un arbusto de hasta 4 m de alto; los tallos jóvenes subcuadrangulares, pubérulos. Las hojas elípticas, de 13–28 cm de largo y 3.5–13 cm de ancho, el ápice acuminado con un acumen apiculado y redondeado, base aguda, márgenes enteros a crenulados, con pecíolos de hasta 4 cm de largo, pubérulos.",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Container(
                      width: 300,
                      height: 300,
                      margin: EdgeInsets.symmetric(vertical: 30),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/PezuñaDeBuey.jpg'),
                          ))),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.lightGreen,
              child: const Icon(Icons.exit_to_app),
            )));
  }
}
class Zingiberales extends StatelessWidget {
  const Zingiberales({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
                      child: Text("Árbol del viajero",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                          "Son hierbas bastante grandes, a veces de tamaño monstruoso (como Musa, Ravenala o Strelitzia). Falta el tallo aéreo salvo el que da las flores. Las hojas están bien diferenciadas en pecíolo y lámina, poseen vena media, venas laterales con forma de S y venación fina transversal.",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Container(
                      width: 300,
                      height: 300,
                      margin: EdgeInsets.symmetric(vertical: 30),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/PezuñaDeBuey.jpg'),
                          ))),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.lightGreen,
              child: const Icon(Icons.exit_to_app),
            )));
  }
}
class Musaceae extends StatelessWidget {
  const Musaceae({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
                      child: Text("Musáceas",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                          "Son una familia de plantas monocotiledóneas conocidas por sus frutos (bananas). Son plantas herbáceas perennes, generalmente de gran tamaño, a veces parcialmente leñosas. Los tallos son subterráneos, simpodiales, rizomatosos a cormosos, y hapaxánticos.",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Container(
                      width: 300,
                      height: 300,
                      margin: EdgeInsets.symmetric(vertical: 30),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/PezuñaDeBuey.jpg'),
                          ))),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.lightGreen,
              child: const Icon(Icons.exit_to_app),
            )));
  }
}
class Anthurium extends StatelessWidget {
  const Anthurium({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
                      child: Text("Anturios",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                          "Son plantas caducas, herbáceas o leñosas, erectas, rastreras o trepadoras, de hojas muy decorativas. Las hojas son de consistencia y grosor notables, ovales, en forma de corazón o punta de flecha, bastante grande, a veces divididas en lóbulos o incluso en forma de mano.",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Container(
                      width: 300,
                      height: 300,
                      margin: EdgeInsets.symmetric(vertical: 30),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/PezuñaDeBuey.jpg'),
                          ))),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.lightGreen,
              child: const Icon(Icons.exit_to_app),
            )));
  }
}







