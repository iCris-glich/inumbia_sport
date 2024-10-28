import 'package:flutter/material.dart';

class BotonesElevados extends StatelessWidget {
  final VoidCallback accionDePresionar;
  final String textoDeBoton;

  const BotonesElevados(
      {required this.accionDePresionar, required this.textoDeBoton, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ElevatedButton(
          onPressed: accionDePresionar,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            iconColor: Colors.black,
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
      ],
    );
  }
}

class BotonDeWhatsApp extends StatelessWidget {
  const BotonDeWhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Comunicate con nosotros',
      child: SizedBox(
        width: 220,
        height: 40,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 48, 210, 54),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/logo_whatsapp.png',
                width: 50,
                height: 50,
                color: Colors.white,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Comunicate con nostros',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
