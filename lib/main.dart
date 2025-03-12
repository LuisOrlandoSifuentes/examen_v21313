import 'package:flutter/material.dart';

// Definición de la clase Sucursal con 3 atributos
class Sucursal {
  String nombre_sucursal;
  String calle_sucursal;
  String telefono;

  Sucursal(
      {required this.nombre_sucursal,
      required this.calle_sucursal,
      required this.telefono});
}

void main() => runApp(MyApp()); // Punto de entrada principal de la app

class MyApp extends StatelessWidget {
  // Lista de sucursales con sus datos
  final List<Sucursal> sucursales = [
    Sucursal(
        nombre_sucursal: 'Sucursal Centro',
        calle_sucursal: 'Av. Principal 123',
        telefono: '555-1234'),
    Sucursal(
        nombre_sucursal: 'Sucursal Norte',
        calle_sucursal: 'Calle 45 #67',
        telefono: '555-5678'),
    Sucursal(
        nombre_sucursal: 'Sucursal Sur',
        calle_sucursal: 'Carrera 12 #89',
        telefono: '555-9101'),
    Sucursal(
        nombre_sucursal: 'Sucursal Este',
        calle_sucursal: 'Avenida 7 #45',
        telefono: '555-1122'),
    Sucursal(
        nombre_sucursal: 'Sucursal Oeste',
        calle_sucursal: 'Boulevard 5 #32',
        telefono: '555-3344'),
  ];

  // Lista de colores para los contenedores
  final List<Color> containerColors = [
    Colors.blue[100]!,
    Colors.green[100]!,
    Colors.orange[100]!,
    Colors.purple[100]!,
    Colors.red[100]!,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
                  'SUCURSAL 1313')), // Título centrado en la barra superior
          backgroundColor: Colors.redAccent, // Color del AppBar
          elevation: 5, // Sombra del AppBar
        ),
        body: Center(
          child: ListView.builder(
            padding: EdgeInsets.all(10), // Padding alrededor de la lista
            itemCount: sucursales.length, // Cantidad de elementos en la lista
            itemBuilder: (context, index) {
              return Container(
                // Espaciado y padding para cada tarjeta
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color:
                      containerColors[index], // Color de fondo de cada tarjeta
                  borderRadius: BorderRadius.circular(15), // Bordes redondeados
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(2, 4), // Sombra ligera debajo
                    ),
                  ],
                ),
                // Columna dentro de la tarjeta con los datos de la sucursal
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nombre: ${sucursales[index].nombre_sucursal}',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold)), // Nombre destacado
                    SizedBox(height: 8),
                    Text('Dirección: ${sucursales[index].calle_sucursal}',
                        style: TextStyle(fontSize: 16)), // Dirección
                    SizedBox(height: 8),
                    Text('Teléfono: ${sucursales[index].telefono}',
                        style: TextStyle(fontSize: 16)), // Teléfono
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
