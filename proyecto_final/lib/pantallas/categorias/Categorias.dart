/*import 'package:flutter/material.dart';


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
                    Text(
                        nombreCategoria), // Nombre de la categoría desde el arreglo
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:proyecto_final/pantallas/categorias/Producto.dart';

class Categorias extends StatelessWidget {
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
    // Agrega más categorías aquí
  ];

  // Mapa de productos por cada categoría
  final Map<String, List<Producto>> productosPorCategoria = {
    'Electrónica': [
      Producto(
          'Samsung Galaxy A04e 32 GB negro 3 GB RAM',
          1999,
          'https://img.freepik.com/vector-gratis/pantalla-realista-smartphone-diferentes-aplicaciones_52683-30241.jpg?w=740&t=st=1700723646~exp=1700724246~hmac=5c6faa69ba72a47967ddc32e81d0cdc234d8e8fef5631f43bd5689411ae787dd',
          'Dispositivo desbloqueado para que elijas la compañía telefónica que prefieras.Tiene 2 cámaras traseras de 13Mpx/2Mpx.Cámara delantera de 5Mpx.',
          'Samsung'),
      Producto(
          'Laptop',
          899.99,
          'https://m.media-amazon.com/images/I/71o4AAATZqL.__AC_SX300_SY300_QL70_ML2_.jpg',
          'Una potente computadora portátil para tu trabajo y entretenimiento.',
          'hp'),
      Producto(
          'Cámara de Microscopio',
          2574.00,
          'https://m.media-amazon.com/images/I/61fcZXE32bL.__AC_SX300_SY300_QL70_ML2_.jpg',
          'Cámara de Microscopio Adaptador de Cámara Industrial Pantalla de Alta Definición de 51MP Microscopio Estéreo Binocular Trinocular Cámara de Video con Ocular Electrónico EE. UU. 110‑240V(HY‑1139).',
          'Walfront'),
      Producto(
          'Traductor de voz inteligente Z2',
          1828.00,
          'https://ae01.alicdn.com/kf/H427c3855d7c04204a159905cc9898bb8b.jpg_640x640Q90.jpg_.webp',
          ' El dispositivo traductor de idiomas admite traducción de voz bidireccional en tiempo real en más de 200 países o regiones.',
          'Temu'),
      Producto(
          'Bascula Digital ',
          529.99,
          'https://m.media-amazon.com/images/I/61GMzFkGqZL._SX466_.jpg',
          'Raganet, Báscula Comercial 40 Kg, Báscula Digital Recargable Pantalla Lcd Función Tara, Para Tienda o Negocio.',
          'Raganet'),
      // Agrega más productos de electrónica aquí
    ],
    'Moda': [
      Producto(
          'Camisa',
          29.99,
          'https://m.media-amazon.com/images/I/91Nkx1S1W8L._AC_SX569_.jpg',
          'Una camisa elegante y cómoda para diversas ocasiones.',
          'Raganet'),
      Producto(
          'Zapatos',
          49.99,
          'https://m.media-amazon.com/images/I/51aWud+c7xL._AC_SY500_.jpg',
          'Zapatos de moda para caminar con estilo y comodidad.',
          'Raganet'),
      Producto(
          'Abrigo',
          1999,
          'https://m.media-amazon.com/images/I/618pJWrnMBL._AC_SY741_.jpg',
          'Abrigo corto de lana con cinta decorativa en frente y mangas, con cuello de peluche desmontable. 82% Lana, 18% Poliamida Aplicación: 70% Acrílico, 30% Poliéster.',
          'Andre'),
      Producto(
          'Vestido de Mujer',
          299.99,
          'https://m.media-amazon.com/images/I/61Aj5cWY30L._AC_SX679_.jpg',
          'Vestido estampado con tirantes ajustables, pieza con alforzas decorativas, aplicación en cintura y cierre invisible en costado.',
          'André'),

      // Agrega más productos de moda aquí
    ],
    // Agrega más categorías y productos
    'Deportes': [
      Producto(
          ' Maleta Deportiva Bolsa',
          253.99,
          'https://m.media-amazon.com/images/I/51k7P4qIB1L._AC_SY450_.jpg',
          'NANWEI Maleta Deportiva Bolsa de Deporte Gym con Compartimento para Zapatos y Bosillo Impermeable, Bolso de Viaje, para Hombres y Mujeres, Ligero (Rosa).',
          'Raganet'),
      Producto(
          'Tobillera Deportiva',
          175,
          'https://m.media-amazon.com/images/I/41S6VWkEs4L._SY445_SX342_QL70_ML2_.jpg',
          'QILAY Tobillera Deportiva de Compresión,Tobillera para Esguince Ortopédica,Ajustable,para Protección Deportiva,para Fitness、Tensión en el Tobillo 、Esguinces y Alivio de Dolor de Hinchazón,L.',
          'Raganet'),
      Producto(
          'Playera Dama',
          399,
          'https://m.media-amazon.com/images/I/61IMouWb+SS._AC_SY741_.jpg',
          'Excelente playera deportiva que puedes usar para cualquier disciplina que practiques, no apesta con el sudor y muy ligera.',
          'MILES'),
      Producto(
          'Tenis para Mujer',
          1092.23,
          'https://m.media-amazon.com/images/I/512MmaGz0yL._AC_SY500_.jpg',
          'Entresuela DynaSoft, Suela de goma para una mejor tracción bajo los pies,Malla diseñada para mayor transpirabilidad.',
          'NIKE'),
      // Agrega más productos de moda aquí
    ],

    'Cuidado Personal': [
      Producto(
          'Crema',
          66.49,
          'https://m.media-amazon.com/images/I/71O+-iKsyAL._AC_SY450_.jpg',
          'NIVEA Gel Facial Refrescante Cuidado Facial (200 ml) con ácido hialurónico,24 horas de humectación para un piel fresca, suave y luminosa, ideal para piel grasa',
          'Nivea'),
      Producto(
          ' Kit de manicura profesional Salandens',
          199.99,
          'https://m.media-amazon.com/images/I/81vPXZj0cJL._AC_SY450_.jpg',
          'Manicura Set-Salandens 18 en 1 Manicura y Pedicura Profesional de pedicura profesional de acero inoxidable, tijeras para uñas, lima de uñas, gancho para orejas, pinzas, tijeras para el pelo de la nariz, maquinilla de afeitar para cejas de Uñas Belleza Cuidado de Uñas Cortadores con Cuero Negro Caso.',
          'Raganet'),
      // Agrega más productos de moda aquí
    ],
    'Gaming': [
      Producto(
          'Alfombrilla con Luz Led',
          198.49,
          'https://m.media-amazon.com/images/I/51QAm8TtjCS.__AC_SX300_SY300_QL70_ML2_.jpg',
          'E T EASYTAO RGB Gaming Mousepad de Escritorio, Alfombrilla con Luz Led para Teclado y Ratón, Goma Impermeable con Base Antideslizante, 14 Luces Circulables, Tamaño de 300x800x4mm',
          'Raganet'),
      Producto(
          'Silla Gamer Silla Ergonomica Escritorio',
          3499.99,
          'https://m.media-amazon.com/images/I/61KYXjOaiUL._AC_SX522_.jpg',
          'GAMER-X- Silla Gamer Silla Ergonomica Escritorio - Silla ejecutiva de Oficina - Sillas Gaming ergonómica reclinable de Piel sintética para Home Office (All Black).',
          'Raganet'),
      // Agrega más productos de moda aquí
    ],

    'Mascotas': [
      Producto(
          'Mochila Transportadora de Mascotas',
          299,
          'https://m.media-amazon.com/images/I/61u8bmR3H7L.__AC_SX300_SY300_QL70_ML2_.jpg',
          'Raganet, Mochila Transportadora de Mascotas, Perros y Gatos, Back Pack Portátil para Mascota Pequeña (Máximo 7Kg) Medidas: Ancho 18cm Largo 31cm Altura 42cm (Color Negro)',
          'Raganet'),
      Producto(
          'secador de pelo para mascotas',
          335.99,
          'https://m.media-amazon.com/images/I/518nOCK5R7S._AC_SX569_.jpg',
          'LEFUS secador de pelo para mascotas, Peine del secador de pelo para mascotas, Secador de pelo de aseo para mascotas con peine, temperatura ajustable y bajo ruido, 2 en 1 cuidado portátil de mascotas en el hogar para perros y gatos.',
          'Raganet'),
      // Agrega más productos de moda aquí
    ],

    'Hogar': [
      Producto(
          'Crema',
          66.49,
          'https://m.media-amazon.com/images/I/71O+-iKsyAL._AC_SY450_.jpg',
          'NIVEA Gel Facial Refrescante Cuidado Facial (200 ml) con ácido hialurónico,24 horas de humectación para un piel fresca, suave y luminosa, ideal para piel grasa',
          'Raganet'),
      Producto(
          ' Kit de manicura profesional Salandens',
          199.99,
          'https://m.media-amazon.com/images/I/81vPXZj0cJL._AC_SY450_.jpg',
          'Manicura Set-Salandens 18 en 1 Manicura y Pedicura Profesional de pedicura profesional de acero inoxidable, tijeras para uñas, lima de uñas, gancho para orejas, pinzas, tijeras para el pelo de la nariz, maquinilla de afeitar para cejas de Uñas Belleza Cuidado de Uñas Cortadores con Cuero Negro Caso.',
          'Raganet'),
      // Agrega más productos de moda aquí
    ],

    'Libros': [
      Producto(
          'Crema',
          66.49,
          'https://m.media-amazon.com/images/I/71O+-iKsyAL._AC_SY450_.jpg',
          'NIVEA Gel Facial Refrescante Cuidado Facial (200 ml) con ácido hialurónico,24 horas de humectación para un piel fresca, suave y luminosa, ideal para piel grasa',
          'Raganet'),
      Producto(
          ' Kit de manicura profesional Salandens',
          199.99,
          'https://m.media-amazon.com/images/I/81vPXZj0cJL._AC_SY450_.jpg',
          'Manicura Set-Salandens 18 en 1 Manicura y Pedicura Profesional de pedicura profesional de acero inoxidable, tijeras para uñas, lima de uñas, gancho para orejas, pinzas, tijeras para el pelo de la nariz, maquinilla de afeitar para cejas de Uñas Belleza Cuidado de Uñas Cortadores con Cuero Negro Caso.',
          'Raganet'),
      // Agrega más productos de moda aquí
    ],

    'Alimentación': [
      Producto(
          'Crema',
          66.49,
          'https://m.media-amazon.com/images/I/71O+-iKsyAL._AC_SY450_.jpg',
          'NIVEA Gel Facial Refrescante Cuidado Facial (200 ml) con ácido hialurónico,24 horas de humectación para un piel fresca, suave y luminosa, ideal para piel grasa',
          'Raganet'),
      Producto(
          ' Kit de manicura profesional Salandens',
          199.99,
          'https://m.media-amazon.com/images/I/81vPXZj0cJL._AC_SY450_.jpg',
          'Manicura Set-Salandens 18 en 1 Manicura y Pedicura Profesional de pedicura profesional de acero inoxidable, tijeras para uñas, lima de uñas, gancho para orejas, pinzas, tijeras para el pelo de la nariz, maquinilla de afeitar para cejas de Uñas Belleza Cuidado de Uñas Cortadores con Cuero Negro Caso.',
          'Raganet'),
      // Agrega más productos de moda aquí
    ],

    'Juguetes': [
      Producto(
          'Crema',
          66.49,
          'https://m.media-amazon.com/images/I/71O+-iKsyAL._AC_SY450_.jpg',
          'NIVEA Gel Facial Refrescante Cuidado Facial (200 ml) con ácido hialurónico,24 horas de humectación para un piel fresca, suave y luminosa, ideal para piel grasa',
          'Raganet'),
      Producto(
          ' Kit de manicura profesional Salandens',
          199.99,
          'https://m.media-amazon.com/images/I/81vPXZj0cJL._AC_SY450_.jpg',
          'Manicura Set-Salandens 18 en 1 Manicura y Pedicura Profesional de pedicura profesional de acero inoxidable, tijeras para uñas, lima de uñas, gancho para orejas, pinzas, tijeras para el pelo de la nariz, maquinilla de afeitar para cejas de Uñas Belleza Cuidado de Uñas Cortadores con Cuero Negro Caso.',
          'Raganet'),
      // Agrega más productos de moda aquí
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorías'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: nombresCategorias.length,
        itemBuilder: (context, index) {
          final nombreCategoria = nombresCategorias[index];
          final productos = productosPorCategoria[nombreCategoria] ?? [];

          return GestureDetector(
            onTap: () {
              // Acción al hacer clic en una categoría
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallesCategoria(
                    categoria: nombreCategoria,
                    productos: productos,
                  ),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.category,
                      size: 40.0,
                    ),
                    SizedBox(height: 8.0),
                    Text(nombreCategoria),
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

// Detalles de categoria sin scroll infinito (No borrar por si hay errores con el scroll)
// class DetallesCategoria extends StatelessWidget {
//   final String categoria;
//   final List<Producto> productos;

//   DetallesCategoria({required this.categoria, required this.productos});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Productos de $categoria'),
//       ),
//       body: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 1, // Puedes ajustar el número de columnas aquí
//           crossAxisSpacing: 8.0,
//           mainAxisSpacing: 8.0,
//         ),
//         itemCount: productos.length,
//         itemBuilder: (context, index) {
//           final producto = productos[index];

//           return Card(
//             margin: EdgeInsets.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Ajusta el tamaño de la imagen según tus preferencias
//                 Image.network(
//                   producto.imagenUrl,
//                   width: double.infinity, // O ajusta un ancho específico
//                   height: 350, // Ajusta la altura según tus preferencias
//                   fit: BoxFit.cover,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         producto.nombre,
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                         maxLines: 2, // Limita el número de líneas de texto
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                       SizedBox(height: 4),
//                       Text(
//                         '\$${producto.precio.toStringAsFixed(2)}',
//                         style: TextStyle(fontSize: 14, color: Colors.green),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Center(
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => DetallesProducto(producto),
//                         ),
//                       );
//                     },
//                     child: Text('Ver Detalles'),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
class DetallesCategoria extends StatefulWidget {
  final String categoria;
  final List<Producto> productos;

  DetallesCategoria({required this.categoria, required this.productos});

  @override
  _DetallesCategoriaState createState() => _DetallesCategoriaState();
}

class _DetallesCategoriaState extends State<DetallesCategoria> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);

    // Puedes ajustar este valor para tener más duplicados y permitir un scroll más largo
    //final int duplicateCount = 2;

    widget.productos.addAll(
        List<Producto>.from(widget.productos)..addAll(widget.productos));
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      // Llegaste al final del contenido, regresa al inicio
      _scrollController.jumpTo(_scrollController.position.minScrollExtent);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos de ${widget.categoria}'),
      ),
      body: GridView.builder(
        controller: _scrollController,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, // Puedes ajustar el número de columnas aquí
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemBuilder: (context, index) {
          final producto = widget.productos[index];

          return Card(
            margin: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  producto.imagenUrl,
                  width: double.infinity,
                  height: 350,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        producto.nombre,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4),
                      Text(
                        '\$${producto.precio.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 12, color: Colors.green),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetallesProducto(producto),
                        ),
                      );
                    },
                    child: Text('Ver Detalles'),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: widget.productos.length,
      ),
    );
  }
}

class DetallesProducto extends StatelessWidget {
  final Producto producto;

  DetallesProducto(this.producto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(producto.nombre),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              producto.imagenUrl,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Nombre: ${producto.nombre}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Precio: \$${producto.precio.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Marca: ${producto.marca}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Descripción: ${producto.descripcion}',
              style: TextStyle(fontSize: 16),
            ),
            // Agrega más detalles aquí si es necesario
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    if (producto.cantidadEnCarrito > 0) {
                      // Reducir la cantidad en el carrito
                      producto.cantidadEnCarrito--;
                    }
                  },
                ),
                Text(
                  '${producto.cantidadEnCarrito}', // Mostrar la cantidad en el carrito
                  style: TextStyle(fontSize: 20),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // Aumentar la cantidad en el carrito
                    producto.cantidadEnCarrito++;
                  },
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Agregar el producto al carrito aquí
                // Puedes manejar la lógica para agregarlo al carrito
                // por ejemplo, usando un provider o una clase de carrito.
              },
              child: Text('Agregar al carrito'),
            ),
          ],
        ),
      ),
    );
  }
}
