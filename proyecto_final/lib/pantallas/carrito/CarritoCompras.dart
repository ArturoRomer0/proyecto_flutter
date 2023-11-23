import 'package:flutter/material.dart';
import 'package:proyecto_final/pantallas/carrito/carrito.dart';

class CarritoCompras extends StatelessWidget {
  makeitem(BuildContext context, int index) {
    return Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.all(20),
          leading: Image.network(
            cart.productos[index].imagenUrl,
            height: double.infinity,
            width: 100,
            fit: BoxFit.contain,
          ),
          title: Text(cart.productos[index].nombre),
          trailing: Text("\$${cart.productos[index].precio.toStringAsFixed(2)}",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    if (cart.productos[index].cantidadEnCarrito > 0) {
                      // Reducir la cantidad en el carrito
                      cart.productos[index].cantidadEnCarrito--;
                      (context as Element).markNeedsBuild();
                    }
                  },
                ),
                Text(
                  '${cart.productos[index].cantidadEnCarrito}', // Mostrar la cantidad en el carrito
                  style: TextStyle(fontSize: 20),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // Aumentar la cantidad en el carrito
                    cart.productos[index].cantidadEnCarrito++;
                    (context as Element).markNeedsBuild();
                  },
                ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (ctx, index) => makeitem(context, index),
        separatorBuilder: (ctx, index) => Divider(color: Colors.grey[300]),
        itemCount: cart.obtenerCantidadTotal(),
      ),
      bottomSheet: Container(
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Proceder al pago',
          ),
        ),
      ),
    );
  }
}
