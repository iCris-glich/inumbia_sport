import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 4,
      backgroundColor: Colors.black,
      toolbarHeight: 180,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tooltip(
                message: 'Inumbia Sport',
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/logo.png',
                    height: 80,
                    width: 80,
                    fit: BoxFit.contain,
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
                    TextButton(
                      onPressed: () {},
                      child: Text('Caballero',
                          style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child:
                          Text('Dama', style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Destacado',
                          style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child:
                          Text('Sale', style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Nosotros',
                          style: TextStyle(color: Colors.white)),
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
  Size get preferredSize =>
      const Size.fromHeight(180); // Asegúrate que coincida con la altura
}
