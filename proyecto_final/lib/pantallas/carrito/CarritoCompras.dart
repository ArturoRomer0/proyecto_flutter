import 'package:flutter/material.dart';

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
