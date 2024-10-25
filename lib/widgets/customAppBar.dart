// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 4,
      backgroundColor: Colors.black,
      toolbarHeight: 180,
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 150,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '¿Qué buscas?',
                    filled: true,
                    fillColor: Colors.white12,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const Tooltip(
                message: 'Tú Usuario',
                child: Icon(
                  Icons.person_2_outlined,
                  color: Colors.white,
                ),
              ),
              const Tooltip(
                message: 'Tú Carrito',
                child: Icon(
                  Icons.card_giftcard,
                  color: Colors.white,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Caballero',
                          style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Dama',
                          style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Destacado',
                          style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Sale',
                          style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Nosotros',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(180);
}

class SliverCustomAppBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overLapsContenido) {
    const double alturaMin = 100;
    const double alturaMax = 170;
    final double proporcion =
        1 - (shrinkOffset / (alturaMax - alturaMin)).clamp(0, 1);
    const double logoPosition = 80;
    final double tamanioLogo = 100 * proporcion + 50 * (1 - proporcion);

    final double opacidadBoton = (shrinkOffset / alturaMax).clamp(0, 1);

    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          Opacity(
            opacity: proporcion,
            child: const CustomAppBar(),
          ),
          Positioned(
            top: 20,
            left: logoPosition,
            child: SizedBox(
              height: tamanioLogo,
              width: tamanioLogo,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: logoPosition,
            child: Opacity(
              opacity: opacidadBoton,
              child: Wrap(
                spacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '¿Qué buscas?',
                        filled: true,
                        fillColor: Colors.white12,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Caballero',
                        style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Dama',
                        style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Destacado',
                        style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Sale',
                        style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Nosotros',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => 180;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
