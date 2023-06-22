import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

final mapController = MapController();

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
      ),
      body: FlutterMap(
        mapController: mapController,
        options: MapOptions(
          onMapReady: () {
            mapController.mapEventStream.listen((evt) {});
            // And any other `MapController` dependent non-movement methods
          },
          center: LatLng(4.074809, -73.584872),
          zoom: 17,
          maxZoom: 18,
          minZoom: 16,
          maxBounds:
          LatLngBounds(LatLng(-73.593584532262,4.06896757930155),LatLng(-73.5683546407673,4.07720277460416)),
        ),
        TileLayer(
          urlTemplate: 'assets/offlineMap/{z}/{x}/{y}.png', // Ruta de las imágenes generadas
          tileProvider: AssetTileProvider(), // Utiliza el proveedor de imágenes de assets
        ),
      ),
    );
  }
}


/*layers: [
TileLayerOptions(
urlTemplate: 'offlineMap/{z}/{x}/{y}.png', // Ruta de las imágenes generadas
tileProvider: AssetTileProvider(), // Utiliza el proveedor de imágenes de assets
),
],
*/


