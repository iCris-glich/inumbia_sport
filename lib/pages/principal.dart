import 'package:flutter/material.dart';
import 'package:inumbia/widgets/customAppBar.dart';
import 'package:inumbia/widgets/imagenes.dart';
import 'package:inumbia/widgets/marcasDestacadas.dart';
import 'package:inumbia/widgets/piesPagina.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  EstadoPrincipal createState() => EstadoPrincipal();
}

class EstadoPrincipal extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ImagenesPromocionales(),
            const Text(
              'Líneas exclusivas',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const MarcasDestacadas(),
            const SizedBox(
              height: 10,
            ),
            const CarruselImagenes(),
            const ProductoReciente(),
            PiesPagina(),
          ],
        ),
      ),
    );
  }
}
