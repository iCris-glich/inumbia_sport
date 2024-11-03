import 'package:flutter/material.dart';

class BotonesElevados extends StatelessWidget {
  final VoidCallback accionDePresionar;
  final String textoDeBoton;

  const BotonesElevados({
    required this.accionDePresionar,
    required this.textoDeBoton,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double anchoPantalla = MediaQuery.of(context).size.width;

    return SizedBox(
      width: anchoPantalla * 0.32,
      child: ElevatedButton(
        onPressed: accionDePresionar,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: const BorderSide(
            color: Colors.black,
            width: 1,
          ),
          elevation: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textoDeBoton,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
            const Icon(Icons.arrow_right_alt),
          ],
        ),
      ),
    );
  }
}

class BotonesUsuario extends StatelessWidget {
  final String texto;
  final VoidCallback accionDePresiona;

  const BotonesUsuario({
    required this.accionDePresiona,
    required this.texto,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double anchoPantalla = MediaQuery.of(context).size.width;

    return SizedBox(
      width: anchoPantalla * 0.8,
      child: ElevatedButton(
        onPressed: accionDePresiona,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: const BorderSide(
            color: Colors.black,
            width: 1,
          ),
          elevation: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              texto,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
            const Icon(Icons.arrow_right_alt),
          ],
        ),
      ),
    );
  }
}

class BotonDeWhatsApp extends StatelessWidget {
  const BotonDeWhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    double anchoPantalla = MediaQuery.of(context).size.width;

    return Tooltip(
      message: 'Comunicate con nosotros',
      child: SizedBox(
        width: anchoPantalla * 0.55,
        height: 40,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 48, 210, 54),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/logo_whatsapp.png',
                width: 24,
                height: 24,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
