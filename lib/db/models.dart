import 'package:flutter/cupertino.dart';
import 'dart:typed_data';

class Estacion {
  final int numero_est;
  final String nombre_est;
  final Text descrip_est;
  final String ubicacion;

  Estacion({required this.numero_est,
    required this.nombre_est,
    required this.descrip_est,
    required this.ubicacion
  });

  Map<String, dynamic> toMap() {
    return {
      'numero_est': numero_est,
      'nombre_est': nombre_est,
      'descrip_est': descrip_est,
      'ubicacion': ubicacion,
    };
  }
}
class Flora{
    final String nombre_flo;
    final Text descripcion_flo;
    final Uint8List imagen_flo;
    final Uint8List audio_flo;

    Flora(
        { required this.nombre_flo,
      required this.descripcion_flo,
      required this.imagen_flo,
      required this.audio_flo,
    });


}

class Fauna{
  final String nombre_fau;
  final Text descripcion_fau;
  final Uint8List imagen_fau;
  final Uint8List audio_fau;

  Fauna(
      { required this.nombre_fau,
        required this.descripcion_fau,
        required this.imagen_fau,
        required this.audio_fau,
      });


}

