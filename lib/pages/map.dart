import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
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
                  CurrentLocationLayer(),
                  TileLayer(
                    urlTemplate: 'assets/offlineMap/{z}/{x}/{y}.png', // Ruta de las imágenes generadas
                    tileProvider: AssetTileProvider(), // Utiliza el proveedor de imágenes de assets
                  ),
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
                      Marker(point: const LatLng(4.072680, -73.584933),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "4",)
                      ),
                      Marker(point: const LatLng(4.071304, -73.583052),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "5",)
                      ),
                      Marker(point: const LatLng(4.072680, -73.584933),
                          width: 100.0,
                          height: 100.0,
                          builder: (ctx) => DecorationMarket(estacion: "6",)
                      ),
                    ],
                  )
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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnotherPage(),
          ),
        );
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

class AnotherPage extends StatelessWidget {
  const AnotherPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Another Page'),
      ),
      body: const Center(
        child: Text('This is another page.'),
      ),
    );
  }
}