import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
                  image: AssetImage('assets/images/estacion1.png'),
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
                  child: Text("Águila pescadora",style: TextStyle(fontSize: 25)),
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
                  child: Text("Iguana",style: TextStyle(fontSize: 25),),
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
                  child: Text("Ameivas gigantes",style: TextStyle(fontSize: 25)),
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