// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MarcasDestacadas extends StatelessWidget {
  const MarcasDestacadas({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Tooltip(
                    message: 'Niño',
                    child: Image.network(
                      'https://assets.adidas.com/images/w_383,h_383,f_auto,q_auto,fl_lossy,c_fill,g_auto/48310f79770e4488bbc71c9641af2a40_9366/pantalon-adicolor-firebird-adolescentes.jpg',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Tooltip(
                    message: 'Niña',
                    child: Image.network(
                      'https://assets.adidas.com/images/w_383,h_383,f_auto,q_auto,fl_lossy,c_fill,g_auto/54f9940fefa44758ab9eaf8e00ae3597_9366/conjunto-deportivo-essentials-3-rayas-brillante.jpg',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductoReciente extends StatefulWidget {
  const ProductoReciente({super.key});

  @override
  EstadoProductos createState() => EstadoProductos();
}

class EstadoProductos extends State<ProductoReciente> {
  List<bool> agrandar = List.generate(10, (index) => false);
  final List<Map<String, String>> productos = [
    {
      'image':
          'https://static.nike.com/a/images/t_default/3c6a577e-0c5a-416b-9fc5-0e03a45ca90e/W+NIKE+DOWNSHIFTER+13.png',
      'category': 'Running',
      'name': 'Nike Dowshifter 13',
      'precio': 'Q850'
    },
    {
      'image':
          'https://static.nike.com/a/images/t_default/3c6a577e-0c5a-416b-9fc5-0e03a45ca90e/W+NIKE+DOWNSHIFTER+13.png',
      'category': 'Running',
      'name': 'Nike Dowshifter 13',
      'precio': 'Q850'
    },
    {
      'image':
          'https://static.nike.com/a/images/t_default/3c6a577e-0c5a-416b-9fc5-0e03a45ca90e/W+NIKE+DOWNSHIFTER+13.png',
      'category': 'Running',
      'name': 'Nike Dowshifter 13',
      'precio': 'Q850'
    },
    {
      'image':
          'https://static.nike.com/a/images/t_default/3c6a577e-0c5a-416b-9fc5-0e03a45ca90e/W+NIKE+DOWNSHIFTER+13.png',
      'category': 'Running',
      'name': 'Nike Dowshifter 13',
      'precio': 'Q850'
    },
    {
      'image':
          'https://static.nike.com/a/images/t_default/3c6a577e-0c5a-416b-9fc5-0e03a45ca90e/W+NIKE+DOWNSHIFTER+13.png',
      'category': 'Running',
      'name': 'Nike Dowshifter 13',
      'precio': 'Q850'
    },
    {
      'image':
          'https://static.nike.com/a/images/t_default/3c6a577e-0c5a-416b-9fc5-0e03a45ca90e/W+NIKE+DOWNSHIFTER+13.png',
      'category': 'Running',
      'name': 'Nike Dowshifter 13',
      'precio': 'Q850'
    },
  ];

  void toggleExpansion(int index) {
    setState(() {
      agrandar[index] = !agrandar[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Definir el número de columnas según el ancho
        int crossAxisCount;
        if (constraints.maxWidth > 1200) {
          crossAxisCount = 5;
        } else if (constraints.maxWidth > 800) {
          crossAxisCount = 4;
        } else if (constraints.maxWidth > 600) {
          crossAxisCount = 3;
        } else {
          crossAxisCount = 2;
        }

        return GridView.builder(
          shrinkWrap: true,
          itemCount: productos.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.8 / 1,
          ),
          itemBuilder: (context, index) {
            return MouseRegion(
              onEnter: (_) => toggleExpansion(index),
              onExit: (_) => toggleExpansion(index),
              child: SizedBox(
                width: agrandar[index] ? 180 : 120,
                height: agrandar[index] ? 400 : 220,
                child: InkWell(
                  onTap: () {},
                  child: Card(
                    child: Column(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Image.network(
                              productos[index]['image']!,
                              width: agrandar[index] ? 140 : 100,
                              height: agrandar[index] ? 140 : 100,
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Center(
                                  child: CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                .cumulativeBytesLoaded /
                                            (loadingProgress
                                                    .expectedTotalBytes ??
                                                1)
                                        : null,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Text(
                          productos[index]['category']!,
                          style: const TextStyle(
                            color: Colors.black26,
                          ),
                        ),
                        Text(
                          productos[index]['name']!,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          productos[index]['precio']!,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        if (agrandar[index]) ...[
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.add_shopping_cart),
                            label: const Text('Agregar al carrito'),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
