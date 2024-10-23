import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inumbia/pages/inicioDeSesion.dart';
import 'package:inumbia/pages/principal.dart';
import 'package:inumbia/pages/registro.dart';

void main() {
  runApp(InumbiaSport());
}

class InumbiaSport extends StatelessWidget {
  InumbiaSport({super.key});

  final GoRouter _ruta = GoRouter(
    initialLocation: '/principal',
    routes: [
      GoRoute(
        path: '/principal',
        builder: (context, state) => Principal(),
      ),
      GoRoute(
        path: '/sesion',
        builder: (context, state) => Iniciodesesion(),
      ),
      GoRoute(
        path: '/registro',
        builder: (context, state) => Registro(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Inumbia Sport',
      routerDelegate: _ruta.routerDelegate,
      routeInformationParser: _ruta.routeInformationParser,
      routeInformationProvider: _ruta.routeInformationProvider,
    );
  }
}
