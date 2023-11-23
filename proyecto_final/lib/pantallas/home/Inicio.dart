//import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:http/http.dart' as http;

// Pantalla de inicio
double kDefaultPaddin = 5.0;

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
    productList.addAll(
      [
        ProductItem(
          productName: "Balon",
          price: 100,
          imageUrl: [
            "https://m.media-amazon.com/images/I/51v96W+BhtS._AC_UF894,1000_QL80_FMwebp_.jpg"
          ],
        ),
        ProductItem(
          productName: "Balon",
          price: 100,
          imageUrl: [
            "https://m.media-amazon.com/images/I/51v96W+BhtS._AC_UF894,1000_QL80_FMwebp_.jpg"
          ],
        ),
        ProductItem(
          productName: "Balon",
          price: 100,
          imageUrl: [
            "https://m.media-amazon.com/images/I/51v96W+BhtS._AC_UF894,1000_QL80_FMwebp_.jpg"
          ],
        ),
        ProductItem(
          productName: "Balon",
          price: 100,
          imageUrl: [
            "https://m.media-amazon.com/images/I/51v96W+BhtS._AC_UF894,1000_QL80_FMwebp_.jpg"
          ],
        ),
        ProductItem(
          productName: "Balon",
          price: 100,
          imageUrl: [
            "https://m.media-amazon.com/images/I/51v96W+BhtS._AC_UF894,1000_QL80_FMwebp_.jpg"
          ],
        ),
        ProductItem(
          productName: "Balon",
          price: 100,
          imageUrl: [
            "https://m.media-amazon.com/images/I/51v96W+BhtS._AC_UF894,1000_QL80_FMwebp_.jpg"
          ],
        ),
        ProductItem(
          productName: "Balon",
          price: 100,
          imageUrl: [
            "https://m.media-amazon.com/images/I/51v96W+BhtS._AC_UF894,1000_QL80_FMwebp_.jpg"
          ],
        ),
        ProductItem(
          productName: "Balon",
          price: 100,
          imageUrl: [
            "https://m.media-amazon.com/images/I/51v96W+BhtS._AC_UF894,1000_QL80_FMwebp_.jpg"
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Women",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          // Categories(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GridView.builder(
                itemCount: productList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: productList[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: productList[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Item de GridView de productos recomendados
class ProductItem extends StatelessWidget {
  final String size;
  final String productName;
  final double price;
  final List<String> imageUrl; // Cambia esta URL por la de tu producto
  final String description;
  ProductItem({
    this.size = 'M',
    required this.productName,
    required this.price,
    required this.imageUrl,
    this.description = 'Descripción del producto',
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

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final ProductItem product;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // each product have a color

      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: kDefaultPaddin / 2),
                        Description(product: product),
                        SizedBox(height: kDefaultPaddin / 2),
                        SizedBox(height: kDefaultPaddin / 2),
                        AddToCart(product: product)
                      ],
                    ),
                  ),
                  // ProductTitleWithImage(product: product)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.product, required this.press});

  final ProductItem product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          product.imageUrl.map((e) => Image.network(e)).toList().first,
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5 / 4),
            child: Text(
              // products is out demo list
              product.productName,
              // style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({super.key, required this.color, required this.isSelected});

  final Color color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({super.key, required this.product});

  final ProductItem product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 40,
          height: 32,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            onPressed: () {
              setState(() {
                if (numOfItems > 1) {
                  setState(() {
                    numOfItems--;
                  });
                }
              });
            },
            child: Icon(Icons.remove),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5 / 2),
          child: Text(
            // if our item is less  then 10 then  it shows 01 02 like that
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        SizedBox(
          width: 40,
          height: 32,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            onPressed: () {
              setState(() {
                numOfItems++;
              });
            },
            child: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}

class AddToCart extends StatelessWidget {
  const AddToCart({super.key, required this.product});

  final ProductItem product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                  // color: product.color,
                  ),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                colorFilter: ColorFilter.mode(Colors.green, BlendMode.srcIn),
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                minimumSize: Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                // backgroundColor: product.color,
              ),
              child: Text(
                "Buy Now".toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
