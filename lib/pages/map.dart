import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:sendero_ambiental_unillanos/pages/estacion1.dart';
import 'package:sendero_ambiental_unillanos/pages/estacion2.dart';
import 'package:sendero_ambiental_unillanos/pages/estacion3.dart';
import 'package:sendero_ambiental_unillanos/pages/estacion4.dart';
import 'package:sendero_ambiental_unillanos/pages/estacion5.dart';
import 'package:sendero_ambiental_unillanos/pages/estacion6.dart';
import 'package:sendero_ambiental_unillanos/pages/estacion7.dart';
import 'package:sendero_ambiental_unillanos/pages/estacion8.dart';
import 'package:sendero_ambiental_unillanos/pages/estacion9.dart';
import 'package:sendero_ambiental_unillanos/pages/estacion10.dart';
import 'package:sendero_ambiental_unillanos/pages/estacion11.dart';
import 'package:sendero_ambiental_unillanos/pages/estacion12.dart';
import 'package:sendero_ambiental_unillanos/pages/estacion13.dart';
import 'package:sendero_ambiental_unillanos/pages/estacion14.dart';
import 'package:sendero_ambiental_unillanos/pages/estacion15.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';

final mapController = MapController();

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(child: FlutterMap(
              mapController: mapController,
                options: MapOptions(
                  onMapReady: () {
                    mapController.mapEventStream.listen((evt) {});
                    // And any other `MapController` dependent non-movement methods
                  },
                  center: const LatLng(4.074809, -73.584872),
                  zoom: 17,
                  maxZoom: 18,
                  minZoom: 16,
                  maxBounds:
                  LatLngBounds( const LatLng(4.06896757930155,-73.593584532262),const LatLng(4.08074177362726,-73.5603546407673)),
                ),
                children: [

                  PolylineLayer(
                    polylines: [
                      Polyline(
                        points: [
                          LatLng(4.07411, -73.5865),
                          LatLng(4.07421, -73.5863),
                          LatLng(4.0734, -73.586),
                          LatLng(4.0735, -73.5849),
                          LatLng(4.0726, -73.5848),
                          LatLng(4.0731, -73.5838),
                          LatLng(4.0718, -73.5838),
                        ],
                        color: Colors.brown,
                      ),
                    ],
                  ),

                  TileLayer(
                    urlTemplate: 'assets/offlineMap/{z}/{x}/{y}.png', // Ruta de las imágenes generadas
                    tileProvider: AssetTileProvider(), // Utiliza el proveedor de imágenes de assets
                  ),
                  CurrentLocationLayer(),
                  MarkerLayer(
                    markers: [
                      Marker(point: const LatLng(4.074166, -73.586566),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "1",)
                          ),
                      Marker(point: const LatLng(4.0734036, -73.5860230),
                        width: 100.0,
                        height: 100.0,
                        builder: (ctx) => DecorationMarket(estacion: "2",)
                      ),
                      Marker(point: const LatLng(4.072668, -73.584931),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "3",)
                      ),
                      Marker(point: const LatLng(4.073155, -73.583869),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "4",)
                      ),
                      Marker(point: const LatLng(4.071304, -73.583052),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "5",)
                      ),
                      Marker(point: const LatLng(4.0732059, -73.5819636),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "6",)
                      ),
                      Marker(point: const LatLng(4.0720819, -73.5827381),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "7",)
                      ),
                      Marker(point: const LatLng(4.0739494, -73.5822425),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "8",)
                      ),
                      Marker(point: const LatLng(4.075150, -73.579795),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "9",)
                      ),
                      Marker(point: const LatLng(4.0757275, -73.5805692),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "10",)
                      ),
                      Marker(point: const LatLng(4.0764609, -73.5804984),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "11",)
                      ),
                      Marker(point: const LatLng(4.0770549, -73.5813812),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "12",)
                      ),
                      Marker(point: const LatLng(4.0758412, -73.5844768),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "13",)
                      ),
                      Marker(point: const LatLng(4.07465436, -73.5844614),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "14",)
                      ),
                      Marker(point: const LatLng(4.0745587, -73.5861126),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "15",)
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      )
      );

  }
}

class DecorationMarket extends StatelessWidget {
String estacion;
   DecorationMarket({
    required this.estacion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (estacion) {
          case "1" :
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Estacion1(),
                ),
              );
            }
            break;
          case "2" :
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Estacion2(),
                ),
              );
            }
            break;
          case "3" :
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Estacion3(),
                ),
              );
            }
            break;
          case "4" :
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Estacion4(),
                ),
              );
            }
            break;
          case "5" :
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Estacion5(),
                ),
              );
            }
            break;
          case "6" :
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Estacion6(),
                ),
              );
            }
            break;
          case "7" :
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Estacion7(),
                ),
              );
            }
            break;
          case "8" :
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Estacion8(),
                ),
              );
            }
            break;
          case "9" :
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Estacion9(),
                ),
              );
            }
            break;
          case "10" :
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Estacion10(),
                ),
              );
            }
            break;
          case "11" :
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Estacion11(),
                ),
              );
            }
            break;
          case "12" :
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Estacion12(),
                ),
              );
            }
            break;
          case "13" :
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Estacion13(),
                ),
              );
            }
            break;
          case "14" :
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Estacion14(),
                ),
              );
            }
            break;
          case "15" :
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Estacion15(),
                ),
              );
            }
            break;
        };

      },
      child: Container(
        child: Column(
          children: [
            Text(
              estacion,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Container(
              child: Icon(
                Icons.location_pin,
                color: Colors.red,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

