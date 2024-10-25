// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inumbia/widgets/customTextField.dart';

class Iniciodesesion extends StatefulWidget {
  const Iniciodesesion({super.key});

  @override
  EstadoSesion createState() => EstadoSesion();
}

class EstadoSesion extends State<Iniciodesesion> {
  final TextEditingController emailControlador = TextEditingController();
  final TextEditingController contraControlador = TextEditingController();

  @override
  void dispose() {
    emailControlador.dispose();
    contraControlador.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(217, 0, 0, 0),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 8, offset: Offset(0, 4))
            ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/logo.png',
                  width: 300,
                  height: 300,
                  fit: BoxFit.fitHeight,
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 50, bottom: 25, right: 10),
                  child: const Text(
                    '¡Crea tu cuenta Inumbia!',
                    style: TextStyle(
                      fontFamily: 'Shrik',
                      fontSize: 40,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                Tooltip(
                  message: 'Email',
                  child: Customtextfield(
                    controlador: emailControlador,
                    hintText: 'Email',
                    obscuro: false,
                    tipoTexto: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Tooltip(
                  message: 'Contraseña',
                  child: Customtextfield(
                    controlador: contraControlador,
                    hintText: 'Contraseña',
                    obscuro: true,
                    tipoTexto: TextInputType.text,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextButton(
                  onPressed: () => context.push('/InumbiaSport/registro'),
                  child: const Text('¿ No tienes una cuenta ?'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
