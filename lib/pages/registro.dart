import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Registro extends StatefulWidget {
  const Registro({
    super.key,
  });

  @override
  EstadoRegistro createState() => EstadoRegistro();
}

class EstadoRegistro extends State<Registro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Pagina 2'),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('Seguir a la siguiente pagina 2'),
            ),
          ],
        ),
      ),
    );
  }
}
