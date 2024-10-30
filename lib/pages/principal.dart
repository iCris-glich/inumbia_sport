import 'package:flutter/material.dart';
import 'package:inumbia/widgets/botones.dart';
import 'package:inumbia/widgets/imagenes.dart';
import 'package:inumbia/widgets/marcasDestacadas.dart';
import 'package:inumbia/widgets/piesPagina.dart';
import 'package:inumbia/widgets/sliverAppBar.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  EstadoPrincipal createState() => EstadoPrincipal();
}

class EstadoPrincipal extends State<Principal> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: SliverCustomAppBar(),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const Column(
                  children: [
                    ImagenesPromocionales(),
                    MarcasDestacadas(),
                    CarruselImagenes(),
                    ProductoReciente(),
                    PiesPagina(),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
      floatingActionButton: const BotonDeWhatsApp(),
    );
  }
}
