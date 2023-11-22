import 'package:flutter/material.dart';
import 'package:proyecto_final/pantallas/home/Inicio.dart';
import 'package:proyecto_final/pantallas/categorias/Categorias.dart';

class CarritoCompras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de Compras'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart,
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              'Tu carrito de compras está vacío',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class BarraNavegacion extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<BarraNavegacion> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    // Aquí colocarías los widgets de las diferentes pestañas
    Inicio(),
    Categorias(),
    CarritoCompras(),
    Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tu Tienda'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Acción al presionar el botón de búsqueda en la barra superior
              // Puedes navegar a la pantalla de búsqueda o realizar alguna acción.
            },
          ),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrito',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    if (index == 1) {
    // Navega a la pantalla de categorías
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Categorias()),
    );
  } else {
    setState(() {
      _currentIndex = index;
    });
  }
  }
}
