import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class MenuDesplegable1 extends StatelessWidget {
  const MenuDesplegable1({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        Logger().i("Seleccionó $value");
      },
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<String>>[
          PopupMenuItem<String>(
            value: 'Tenis',
            child: Text('Tenis'),
          ),
          PopupMenuItem<String>(
            value: 'Ropa',
            child: Text('Ropa'),
          ),
          PopupMenuItem<String>(
            value: 'Accesorios',
            child: Text('Accesorios'),
          ),
          PopupMenuItem<String>(
            value: 'Balones',
            child: Text('Balones'),
          ),
        ];
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: const Row(
          children: [
            Text(
              'Niño',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(width: 5),
            Icon(
              Icons.arrow_downward_sharp,
              size: 15,
              color: Colors.black87,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuDesplegable2 extends StatelessWidget {
  const MenuDesplegable2({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        Logger().i("Seleccionó $value");
      },
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<String>>[
          PopupMenuItem<String>(
            value: 'Tenis',
            child: Text('Tenis'),
          ),
          PopupMenuItem<String>(
            value: 'Ropa',
            child: Text('Ropa'),
          ),
          PopupMenuItem<String>(
            value: 'Accesorios',
            child: Text('Accesorios'),
          ),
          PopupMenuItem<String>(
            value: 'Balones',
            child: Text('Balones'),
          ),
        ];
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: const Row(
          children: [
            Text(
              'Niña',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(width: 5),
            Icon(
              Icons.arrow_downward_sharp,
              size: 15,
              color: Colors.black87,
            ),
          ],
        ),
      ),
    );
  }
}
