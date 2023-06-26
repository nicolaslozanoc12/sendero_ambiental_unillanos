import 'package:flutter/material.dart';

class Informacion extends StatelessWidget {
  const Informacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información'),
      ),
      body:
        ListView(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'Versión: 1.0.0 \n'
                  'Información de contacto:'
              'Correo electrónico: nslozano@unillanos.edu.co , nmbernal@unillanos.edu.co\n'
              'Teléfono: +57 3504914163, +57 3162965512'

              '- Desarrolladores: Nicolas Steven Lozano Castro, Nicole Michelle Bernal Galindo\n'
                  '''
------------------------------------------------------------
'Créditos:
Este proyecto ha sido desarrollado utilizando Flutter, un framework de código abierto desarrollado por Google.

Copyright (c) 2014, The Flutter Authors. All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
   this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the <organization> nor the names of its contributors may be
   used to endorse or promote products derived from this software without
   specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
OF SUCH DAMAGE.

    ----------------------------------------------------------
  Copyright (c) 2018-2023, the \'flutter_map\' authors and maintainers, loosely based on the original works of \'leaflet.js\' by Vladimir Agafonkin & CloudMade

All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

* Neither the name of the copyright holder nor the names of its
  contributors may be used to endorse or promote products derived from
  this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.'
----------------------------------------------------------------
Software recolección de teselas Maperitive
Author:	Igor Brejc
License:	Proprietary (free of charge)
Version:	2.4.3 (2018-02-27[1])
Maperitive es una aplicación de escritorio GRATUITA para dibujar mapas basados en datos de OpenStreetMap y GPS. Puedes definir qué aparece en el mapa y cómo se pinta. También puedes exportar estos mapas a archivos de mapa de bits y SVG e imprimirlos1.

Maperitive en sí no impone ninguna restricción de licencia en los mapas que produces. Si usas datos de OSM, visita la página de preguntas frecuentes legales de OSM para obtener más información sobre la licencia de mapas basados en datos de OSM
-----------------------------------------------------------------

''',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
    );
  }
}
