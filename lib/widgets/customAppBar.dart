// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 4,
      backgroundColor: const Color(0xffFF5722),
      toolbarHeight: 180,
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Tooltip(
                  message: 'Inumbia Juniors',
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 70,
                    height: 70,
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '¿Qué buscas?',
                    filled: true,
                    fillColor: Colors.white12,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const Tooltip(
                message: 'Tú Usuario',
                child: Icon(
                  Icons.person_2_outlined,
                  color: Colors.white,
                ),
              ),
              const Tooltip(
                message: 'Tú Carrito',
                child: Icon(
                  Icons.card_giftcard,
                  color: Colors.white,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PopupMenuButton<String>(
                      onSelected: (String value) {
                        Logger().i("Seleccionó $value");
                      },
                      itemBuilder: (BuildContext context) {
                        return <String>[
                          'Tenis',
                          'Ropa',
                          'Accesorios',
                          'Balones',
                        ].map((String choice) {
                          return PopupMenuItem<String>(
                            value: choice,
                            child: Text(choice),
                          );
                        }).toList();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: const Row(
                          children: [
                            Text(
                              'Niño',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_downward_sharp,
                              size: 15,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    PopupMenuButton<String>(
                      onSelected: (String value) {
                        Logger().i("Seleccionó $value");
                      },
                      itemBuilder: (BuildContext context) {
                        return <String>[
                          'Tenis',
                          'Ropa',
                          'Accesorios',
                          'Balones',
                        ].map((String choice) {
                          return PopupMenuItem<String>(
                            value: choice,
                            child: Text(choice),
                          );
                        }).toList();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: const Row(
                          children: [
                            Text(
                              'Niña',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_downward_sharp,
                              size: 15,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sale',
                        style: TextStyle(color: Colors.white),
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
