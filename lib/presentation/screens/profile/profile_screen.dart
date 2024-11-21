import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  final String? nombre;
  final String? edad;
  final String? ocupacion;

  const ProfileScreen({super.key, this.nombre, this.edad, this.ocupacion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perfil',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nombre: $nombre',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            Text(
              'Edad: $edad',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            Text(
              'Ocupación: $ocupacion',
              style: const TextStyle(fontSize: 18),
            ),
            // return to home screen
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                context.go('/');
              },
              label: const Text('Regresar a inicio', style: TextStyle(fontSize: 18)),
              icon: const Icon(Icons.home_rounded, size: 28),
            ),
          ],
        ),
      ),
    );
  }
}