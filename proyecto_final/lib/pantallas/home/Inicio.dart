import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Pantalla de inicio
class Inicio extends StatefulWidget {
  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  final List<ProductItem> productList = [];

  @override
  void initState() {
    super.initState();
    getProduct();
  }

  Future<void> getProduct() async {
    try {
      var url = Uri.http('192.168.1.68:3000', '/products', {'limit': '20'});
      var response = await http.get(url, headers: {
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*'
      });

      final List<dynamic> data = jsonDecode(response.body);
      data.forEach((element) {
        productList.add(ProductItem(
          productName: element['name'],
          price: element['price'].toString(),
          imageUrl:
              List<String>.from(element['images'].map((e) => e as String)),
        ));
      });
      setState(() {});
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 300.0,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5, // Cambia esto según la cantidad de ofertas
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(0.0),
                  width: 150.0,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Oferta ${index + 1}',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20.0),
          Container(
              child: Center(
            child: Text("Productos que te recomendamos",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          )),
          SizedBox(height: 20.0),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    1, // Número de columnas en el grid (en este caso, 1)
                mainAxisSpacing:
                    8.0, // Espaciado entre elementos en el eje principal
                crossAxisSpacing:
                    8.0, // Espaciado entre elementos en el eje cruzado
                childAspectRatio:
                    2.0, // Relación de aspecto de cada elemento (ajusta según tu diseño)
              ),
              itemCount: productList
                  .length, // Cambia esto según la cantidad de productos recomendados
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Acción al presionar un producto recomendado
                    // Puedes navegar a la página del producto o realizar alguna acción.
                    print('Presionaste el producto recomendado ${index + 1}');
                    // Aquí podrías navegar a la página del producto o realizar alguna otra acción.
                  },
                  child: productList[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

//Item de GridView de productos recomendados
class ProductItem extends StatelessWidget {
  final String productName;
  final String price;
  final List<String> imageUrl; // Cambia esta URL por la de tu producto

  ProductItem({
    required this.productName,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Acción al presionar el producto
        print('Presionaste el producto: $productName');
        // Puedes navegar a la página del producto o realizar alguna otra acción.
      },
      child: Card(
        margin: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen del producto
            Row(
              children: imageUrl
                  .map((url) => Image.network(
                        url,
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ))
                  .toList(),
            ),
            // Nombre del producto
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                productName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Precio del producto
            Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
              child: Text(
                'Precio: $price',
                style: TextStyle(
                  color: Colors
                      .green, // Puedes ajustar el color según tus preferencias
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
