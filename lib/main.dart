import 'package:flutter/material.dart';
import 'package:sendero_ambiental_unillanos/pages/map.dart';
import 'package:sendero_ambiental_unillanos/pages/informacion.dart';
import 'package:sendero_ambiental_unillanos/pages/acerca.dart';


void main() {
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sendero ambiental Unillanos',
        theme: ThemeData(
        fontFamily: 'Archivo',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        ),
      home: const Inicio(),
     ),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(), // Deshabilita el desplazamiento
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.72, // Ajusta la altura de la imagen principal
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/imagen_principal.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5), // Establece el color de fondo con una opacidad de 0.5 (translúcido)
                  borderRadius: BorderRadius.circular(10), // Agrega esquinas redondeadas
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0), // Agrega un padding al texto
                  child: Text(
                    "Sendero ambiental Unillanos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 2.0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Espacio entre la imagen y los botones
          Container(
            decoration: BoxDecoration(
            color: Color.fromRGBO(218, 247, 166,0.2)
            ),

            padding: const EdgeInsets.only(top:20.0, left: 20.0,right: 20.0,bottom: 50.0),
            child: Column(
              children: [
                BotonRecorrido(),
                SizedBox(height: 20), // Espacio entre los botones
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Informacion())
                        );
                      },
                      child: Text("Información general"),

                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Acerca())
                        );
                      },
                      child: Text("Acerca de la app"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BotonRecorrido extends StatelessWidget {
  const BotonRecorrido({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Map())
        );
      },
      child: Text(
        "Iniciar recorrido",
        style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic),
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(16), // Agrega relleno de 16 en cada lado del botón
      ),
    );
  }
}

