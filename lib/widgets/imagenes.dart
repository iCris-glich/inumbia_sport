import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:inumbia/widgets/botones.dart';

class ImagenesPromocionales extends StatelessWidget {
  const ImagenesPromocionales({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SizedBox(
          width: screenWidth,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://blog.marti.mx/wp-content/uploads/2023/05/tenis-nike-para-ninos-jpeg.webp',
                  width: double.infinity,
                  height: screenHeight * 0.5,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 50,
                right: 20,
                child: BotonesElevados(
                  accionDePresionar: () {},
                  textoDeBoton: 'Leer Más',
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: screenWidth,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://i.ebayimg.com/thumbs/images/g/w14AAOSwOCtmWlqA/s-l1200.jpg',
                  width: double.infinity,
                  height: screenHeight * 0.9,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 50,
                left: 20,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.white,
                    iconColor: const Color(0xff212121),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        'Leer más',
                        style: TextStyle(color: Color(0xff212121)),
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CarruselImagenes extends StatelessWidget {
  const CarruselImagenes({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> imagenes = [
      'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/6be24571-4541-4725-a095-68248ef081fb/COURT+BOROUGH+MID+2+%28GS%29.png',
      'https://d3fvqmu2193zmz.cloudfront.net/items_2/uid_commerces.1/uid_items_2.FD2IYHPY9UCX/1500x1500/637D55A446046.webp',
      'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/a638f1f8841943e385d200eed9b280d0_9366/Racer_TR23_Shoe(0xff212121)_IG7348_01_standard.jpg'
    ];

    return CarouselSlider(
      items: imagenes.map((e) {
        return Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Color(0xff212121)),
          child: Image.network(
            e,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        );
      }).toList(),
      options: CarouselOptions(
        height: 500.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        enlargeCenterPage: true,
        viewportFraction: 1,
        aspectRatio: 16 / 9,
      ),
    );
  }
}
