import 'package:flutter/material.dart';
import 'package:sendero_ambiental_unillanos/pages/estacionInfo.dart';

void main() => runApp(Estacion1());

class Estacion1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.height * 1;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/estacion1.png'),
              fit: BoxFit.cover,
              repeat: ImageRepeat.repeat,
              colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.8),
                  BlendMode.dstATop), // Agrega transparencia aquí
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InfoEstacion(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.lightGreen.shade300), // Cambia el color aquí
                      ),
                      child: Text(
                        "Estación 1",
                        style: TextStyle(fontSize: 25),
                        key: key,
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Flora(),
                          ),
                        );

                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.lightGreen.shade300), // Cambia el color aquí
                      ),
                      child: Text("Flora", style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 110,
                    margin: EdgeInsets.symmetric(vertical: 25),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Fauna(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.lightGreen.shade300), // Cambia el color aquí
                      ),
                      child: Text(
                        "Fauna",
                        style: TextStyle(fontSize: 25),
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
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.lightGreen.shade300), // Cambia el color aquí
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
                      child:
                          Text("CASCO DE VACA", style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: Center(
                        child: Text(
                      "Este lugar es un oscioecosistema de docencia cercano a la clinica veterinaria",
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
                        image: AssetImage('assets/images/estacion1.png'),
                      ))),
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
                          ))),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/images/ODS12.png'),
                        )),
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/images/ODS15.png'),
                        )),
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
            )));
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
                      "FAUNA",
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
                          builder: (context) => InfoMonoComun(),
                        ),
                      );
                    },
                    child: Text("Mono ardilla", style: TextStyle(fontSize: 25)),
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
                          builder: (context) => InfoAguilaPescadora(),
                        ),
                      );
                    },
                    child: Text("Águila pescadora",
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
                          builder: (context) => Iguana(),
                        ),
                      );
                    },
                    child: Text(
                      "Iguana",
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
                          builder: (context) => AmeivasGigantes(),
                        ),
                      );
                    },
                    child: Text("Ameivas gigantes",
                        style: TextStyle(fontSize: 25)),
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
                    },
                    child: Text("Bauhinia forficata",
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
                    onPressed: () {},
                    child: Text("Bromeliaceae", style: TextStyle(fontSize: 25)),
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
                    onPressed: () {},
                    child: Text(
                      "Cactaceae",
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
                    onPressed: () {},
                    child:
                        Text("Polypodiaceae", style: TextStyle(fontSize: 25)),
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

class PezuniaDeBuey extends StatelessWidget {
  const PezuniaDeBuey({super.key});
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
                      child: Text("Pezuña de buey",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                      "Árbol perennifolio que puede alcanzar hasta 7 o más metros de altura. Sus flores son de color blanco y rosáceo, y es semejantes a una orquídea.",
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


class InfoMonoComun extends StatelessWidget {
  const InfoMonoComun({super.key});
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
                      child: Text("MONO ARDILLA COMUN",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                      "Es un primate neotropical perteneciente a la familia Cebidae. Al igual que todos los monos ardilla, posee cola larga, no prensil, con la porción terminal de color negro. ",
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
                        image: AssetImage('assets/images/monoArdilla.jpg'),
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
class InfoAguilaPescadora extends StatelessWidget {
  const InfoAguilaPescadora({super.key});
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
                      child: Text("AGUILA PESCADORA",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                          "Es un ave rapaz de tamaño medio, que aparece en todos los continentes, excepto en la Antártida, aunque en América del Sur es solo migradora no nidificante.",
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
class Iguana extends StatelessWidget {
  const Iguana({super.key});
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
                      child: Text("IGUANA",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                          "Son un género de saurópsidos (reptiles) escamosos iguánidos, endémicas de zonas tropicales de Centroamérica, Sudamérica y el Caribe. Las iguanas son animales herbívoros y ovíparos. Ponen sus huevos bajo tierra durante el mes de febrero.",
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
                            image: AssetImage('assets/images/iguana.jpg'),
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
class AmeivasGigantes extends StatelessWidget {
  const AmeivasGigantes({super.key});
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
                      child: Text("AMEIVAS GIGANTES",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                          "También conocida como ameiva gigante , ameiva verde , lagarto terrestre sudamericano o corredor amazónico , es una especie de lagarto de la familia Teiidae que se encuentra en América Central y del Sur y algunas islas del Caribe. Ameiva ameiva tiene un cuerpo aerodinámico, cabeza puntiaguda, lengua ligeramente bifurcada y patas traseras musculosas. Crecen hasta aproximadamente 45 a 50 cm.",
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
                            image: AssetImage('assets/images/ameivaAmeiva.jpg'),
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

