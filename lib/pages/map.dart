import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class Map extends StatelessWidget {
const Map({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("mapa"),
      ),
      body: FlutterMap(
          options: MapOptions(center: LatLng(4.0743587, -57.5861126),zoom: 10),
          layers),


      ),

    );

  }
}