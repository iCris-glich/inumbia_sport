import 'package:flutter/material.dart';
import 'package:inumbia/widgets/customAppBar.dart';
import 'package:inumbia/widgets/imagenes.dart';
import 'package:inumbia/widgets/marcasDestacadas.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  EstadoPrincipal createState() => EstadoPrincipal();
}

class EstadoPrincipal extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImagenesPromocionales(),
            Text(
              'Líneas exclusivas',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            MarcasDestacadas(),
            SizedBox(
              height: 10,
            ),
            CarruselImagenes(),
            ProductoReciente(),
          ],
        ),
      ),
    );
  }
}
