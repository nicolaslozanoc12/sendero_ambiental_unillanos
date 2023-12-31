import 'package:flutter/material.dart';

void main() => runApp(Estacion3());

class Estacion3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.height * 1;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/estacion3.png'),
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
                        "Estación 3",
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
                      child:
                          Text("RATA DE BAMBU", style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: Center(
                        child: Text(
                      "Presencia de canal, caminos peatonales y coomplejo deportivo. La arborización por años se ha logrado con actvidades de aula. Este punto se reconoce por los avistamientos de la rat del bambú Dactylmys dactylinus",
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
                        image: AssetImage('assets/images/estacion3.png'),
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
                          image: AssetImage('assets/images/ODS6.png'),
                        )),
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/images/ODS13.png'),
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
                    image: AssetImage('assets/images/estacion3.png'),
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
                          builder: (context) => Guacharaca(),
                        ),
                      );
                    },
                    child: Text("Guacharaca", style: TextStyle(fontSize: 25)),
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
                          builder: (context) => Tucanillo(),
                        ),
                      );
                    },
                    child: Text("Tucanillo", style: TextStyle(fontSize: 25)),
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
                          builder: (context) => Mirla(),
                        ),
                      );
                    },
                    child: Text(
                      "Mirla buchiblanca",
                      style: TextStyle(fontSize: 25),
                    ),
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

class Guacharaca extends StatelessWidget {
  const Guacharaca({super.key});
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
                      child: Text("GUACHARACA", style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                      "Es una especie que se alimenta principalmente de frutas, semillas e insectos. Aunque no se considera una especie en peligro de extinción, su población se ha visto afectada por la deforestación y la caza",
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
                        image: AssetImage('assets/images/guacharaca.png'),
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
                          builder: (context) => Anthurium(),
                        ),
                      );
                    },
                    child: Text("Anthurium", style: TextStyle(fontSize: 25)),
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
                          builder: (context) => Zebrina(),
                        ),
                      );
                    },
                    child: Text("Zebrina", style: TextStyle(fontSize: 25)),
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
                          builder: (context) => Bambusoideae(),
                        ),
                      );

                    },
                    child: Text(
                      "Bambusoideae",
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
                          builder: (context) => Poaceae(),
                        ),
                      );

                    },
                    child: Text("Poaceae", style: TextStyle(fontSize: 25)),
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
                          builder: (context) => Piperaceae(),
                        ),
                      );

                    },
                    child: Text("Piperaceae", style: TextStyle(fontSize: 25)),
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
                          builder: (context) => Polypodiaceae(),
                        ),
                      );

                    },
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

class Tucanillo extends StatelessWidget {
  const Tucanillo({super.key});
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
                      child: Text("TUCANILLO", style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                      "Es un ave facilmente reconocible por sus colores vistosos, se alimenta frutas, semillas e insectos.",
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
                        image: AssetImage('assets/images/tucanillo.png'),
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

class Mirla extends StatelessWidget {
  const Mirla({super.key});
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
                      child: Text("MIRLA BUCHIBLANCA",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                      "Es un ave muy común en zonas intervenidas, habita en arbustos y árboles. Se alimenta de insectos que encuentra en el suelo.",
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
                        image: AssetImage('assets/images/mirla.png'),
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
                      child: Text("Anturios", style: TextStyle(fontSize: 25)),
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

class Zebrina extends StatelessWidget {
  const Zebrina({super.key});
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
                      child: Text("Zebrina", style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                      "La Zebrina es una planta perenne y rastrera que pertenece a la familia Commelinaceae. Se caracteriza por sus hojas suculentas de forma ovalada con rayas de colores, generalmente verde, plateado y morado. Es una planta popular en jardines y como planta de interior debido a su atractivo follaje.",
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

class Bambusoideae extends StatelessWidget {
  const Bambusoideae({super.key});
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
                      child: Text("Bambús", style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                      "La subfamilia Bambusoideae es una subfamilia de plantas de la familia de las gramíneas (Poaceae). Incluye al bambú, que es uno de los grupos de plantas más importantes y versátiles del mundo. Los bambúes son conocidos por su rápido crecimiento y su uso en la construcción, la fabricación de muebles y la jardinería.",
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

class Piperaceae extends StatelessWidget {
  const Piperaceae({super.key});
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
                      child: Text("Piperáceas", style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                      "La familia Piperaceae es una familia de plantas que incluye muchas especies de pimienta, como la pimienta negra y la pimienta de Jamaica. Son plantas aromáticas y se utilizan en la cocina y en la medicina tradicional. Tienen hojas alternas y flores pequeñas y numerosas agrupadas en espigas o cabezas.",
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

class Poaceae extends StatelessWidget {
  const Poaceae({super.key});
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
                      child: Text("Gramíneas", style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                      "La familia Poaceae, conocida comúnmente como gramíneas, es una familia de plantas herbáceas, arbustivas o raramente leñosas de la categoría de las monocotiledóneas. Son ampliamente distribuidas en la Tierra y se encuentran en casi todos los hábitats terrestres, desde los trópicos hasta las regiones polares.",
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
class Polypodiaceae extends StatelessWidget {
  const Polypodiaceae({super.key});
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
                      child: Text("Polypodiáceas",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                          "Son una familia de helechos del orden Polypodiales, con un rizoma del que surgen frondes dísticas y articuladas en el punto de unión al rizoma.",
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



