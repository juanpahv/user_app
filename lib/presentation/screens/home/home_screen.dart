import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inicio',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.icon(
              onPressed: () {
                context.push("/create_profile");
              },
              label: const Text('Crear Perfil', style: TextStyle(fontSize: 18)),
              icon: const Icon(Icons.person_add_rounded, size: 28),
            ),
          ],
        ),
      ),
    );
  }
}
