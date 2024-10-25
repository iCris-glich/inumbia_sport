// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PiesPagina extends StatelessWidget {
  const PiesPagina({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Nosotros',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt,
                  color: Colors.red,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.blue,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.whatshot,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
