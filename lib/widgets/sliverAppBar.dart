import 'package:flutter/material.dart';
import 'package:inumbia/widgets/customAppBar.dart';

class SliverCustomAppBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overLapsContenido) {
    const double alturaMin = 100;
    const double alturaMax = 170;
    final double proporcion =
        1 - (shrinkOffset / (alturaMax - alturaMin)).clamp(0, 1);
    final double tamanioLogo = 100 * proporcion + 50 * (1 - proporcion);

    final double opacidadBoton = (shrinkOffset / alturaMax).clamp(0, 1);

    return Container(
      color: const Color(0xffFF5722),
      child: Stack(
        children: [
          Opacity(
            opacity: proporcion,
            child: const CustomAppBar(),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Opacity(
              opacity: opacidadBoton,
              child: SizedBox(
                height: tamanioLogo,
                width: tamanioLogo,
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: IgnorePointer(
              ignoring: opacidadBoton ==
                  0, // Desactiva los toques cuando no es visible
              child: Opacity(
                opacity: opacidadBoton,
                child: Wrap(
                  spacing: 10,
                  alignment: WrapAlignment.end,
                  children: [
                    SizedBox(
                      width: 150,
                      child: TextField(
                        enabled: opacidadBoton !=
                            0, // Desactiva cuando no es visible
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
                    IconButton(
                      onPressed: opacidadBoton != 0 ? () {} : null,
                      icon: const Icon(Icons.search),
                    ),
                    IconButton(
                      onPressed: opacidadBoton != 0 ? () {} : null,
                      icon: const Icon(Icons.car_crash),
                    ),
                  ],
                ),
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
