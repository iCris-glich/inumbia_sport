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
                    message: 'Project Rock 6',
                    child: Image.network(
                      'https://mosaic03.ztat.net/prd/media/comet/UN241A0CI-Q12/PREVIEW_IMG/0002NM1IB2K_image_1700637384.jpg',
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
    },
    {
      'image':
          'https://zonafutbolgt.com/wp-content/uploads/2024/10/IX4019-768x768.webp',
      'category': 'Running',
      'name': 'Nike Dowshifter 13',
    },
  ];

  void toggleExpansion(int index) {
    setState(() {
      agrandar[index] = !agrandar[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: productos.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return MouseRegion(
          onEnter: (_) => toggleExpansion(index),
          onExit: (_) => toggleExpansion(index),
          child: SizedBox(
            width: agrandar[index] ? 180 : 120,
            height: agrandar[index] ? 400 : 220,
            child: Card(
              child: Column(
                children: [
                  AnimatedSize(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                    child: Image.network(
                      productos[index]['image']!,
                      width: agrandar[index] ? 140 : 100,
                      height: agrandar[index] ? 140 : 100,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    (loadingProgress.expectedTotalBytes ?? 1)
                                : null,
                          ),
                        );
                      },
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
        );
      },
    );
  }
}
