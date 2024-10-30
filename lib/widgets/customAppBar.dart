// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inumbia/widgets/menuDesplegable.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 4,
      backgroundColor: const Color(0xffFF5722),
      toolbarHeight: 180,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 125,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '¿Qué buscas?',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => context.pushReplacementNamed('/principal'),
                child: Tooltip(
                  message: 'Inumbia Juniors',
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 75,
                    height: 75,
                  ),
                ),
              ),
              Tooltip(
                message: 'Tú Usuario',
                child: IconButton(
                  onPressed: () => context.go('/sesion'),
                  icon: const Icon(
                    Icons.person_2_outlined,
                    color: Colors.black87,
                    size: 35,
                  ),
                ),
              ),
              Tooltip(
                message: 'Tú Carrito',
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.card_giftcard,
                    color: Colors.black87,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Nuevo ingreso',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Top',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const MenuDesplegable1(),
                    const MenuDesplegable2(),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(234, 214, 2, 2),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          '\$ale',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(180);
}
