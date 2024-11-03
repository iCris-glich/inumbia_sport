import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:inumbia/widgets/botones.dart';
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
      backgroundColor: const Color.fromARGB(217, 255, 255, 255),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/logo.png',
                  width: 300,
                  height: 300,
                  fit: BoxFit.fitHeight,
                ).animate().fadeIn(duration: 800.ms).slideX(begin: -0.3),
                Container(
                  padding:
                      const EdgeInsets.only(left: 50, bottom: 25, right: 10),
                  child: const Text(
                    'Crea una cuenta con nosotros',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ).animate().fadeIn(duration: 1000.ms).slideX(begin: 0.3),
                Tooltip(
                  message: 'Email',
                  child: Customtextfield(
                    controlador: emailControlador,
                    hintText: 'Email',
                    obscuro: false,
                    tipoTexto: TextInputType.emailAddress,
                  ),
                ).animate().fadeIn().scale(duration: 800.ms),
                const SizedBox(height: 30),
                Tooltip(
                  message: 'Contraseña',
                  child: Customtextfield(
                    controlador: contraControlador,
                    hintText: 'Contraseña',
                    obscuro: true,
                    tipoTexto: TextInputType.text,
                  ),
                ).animate().fadeIn().scale(duration: 900.ms),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () => context.push('/registro'),
                  child: const Text('¿ No tienes una cuenta ?'),
                ).animate().fadeIn(duration: 500.ms).slideX(begin: 0.3),
                BotonesUsuario(
                  accionDePresiona: () {},
                  texto: 'Continuar',
                ).animate().fadeIn(duration: 500.ms).slideX(begin: -0.3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
