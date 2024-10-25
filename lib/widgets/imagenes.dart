import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
                  'https://underarmour.scene7.com/is/image/Underarmour/SS24_CURRY_Curry11_Mouthguard_Site_5_4?qlt=75&fmt=jpg&wid=608&op_sharpen=1&',
                  width: double.infinity,
                  height: screenHeight * 0.5,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 50,
                right: 20,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.black,
                    iconColor: Colors.white,
                  ),
                  child: const Row(
                    children: [
                      Text(
                        'Leer más',
                        style: TextStyle(color: Colors.white),
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
        SizedBox(
          width: screenWidth,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/if_w_gt_1920,w_1920/football_ss24_F50_fast_reborn_launch_pdp_statement_image_04_ll_d_55f606b461.jpg',
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
                    iconColor: Colors.black,
                  ),
                  child: const Row(
                    children: [
                      Text(
                        'Leer más',
                        style: TextStyle(color: Colors.black),
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
      'https://i.ebayimg.com/thumbs/images/g/gF0AAOSw2i9mwhiq/s-l1200.jpg',
      'https://marcadegol.com/fotos//2019/01/puma-rs-x-trophies-1021x580.jpg',
      'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/a638f1f8841943e385d200eed9b280d0_9366/Racer_TR23_Shoes_Black_IG7348_01_standard.jpg'
    ];

    return CarouselSlider(
      items: imagenes.map((e) {
        return Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Colors.black),
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
