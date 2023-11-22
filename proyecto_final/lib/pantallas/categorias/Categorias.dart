import 'package:flutter/material.dart';

class Categorias extends StatelessWidget {
  // Arreglo de nombres de categorías
  final List<String> nombresCategorias = [
    'Electrónica',
    'Moda',
    'Deportes',
    'Cuidado Personal',
    'Gaming',
    'Mascotas',
    'Hogar',
    'Libros',
    'Alimentación',
    'Juguetes',
  ];

  // Mapa de iconos asociados a las categorías
  final Map<String, IconData> iconosCategorias = {
    'Electrónica': Icons.devices,
    'Moda': Icons.accessibility,
    'Deportes': Icons.directions_run,
    'Cuidado Personal': Icons.favorite,
    'Gaming': Icons.videogame_asset,
    'Mascotas': Icons.pets,
    'Hogar': Icons.home,
    'Libros': Icons.book,
    'Alimentación': Icons.fastfood,
    'Juguetes': Icons.toys,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorías'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Dos columnas
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: nombresCategorias.length,
        itemBuilder: (context, index) {
          final nombreCategoria = nombresCategorias[index];
          final iconoCategoria = iconosCategorias[nombreCategoria];

          return GestureDetector(
            onTap: () {
              // Acción al hacer clic en una tarjeta
              print('Presionaste la categoría: $nombreCategoria');
              // Puedes navegar a más detalles de la categoría o realizar otra acción.
            },
            child: Card(
              margin: EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      iconoCategoria ?? Icons.category,
                      size: 50.0,
                    ),
                    SizedBox(height: 8.0),
                    Text(nombreCategoria), // Nombre de la categoría desde el arreglo
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
