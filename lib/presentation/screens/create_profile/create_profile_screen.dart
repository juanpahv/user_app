import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:user_app/widgets/custom_text_field.dart';

class CreateProfileScreen extends StatelessWidget {
  const CreateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nombre = TextEditingController();
    final edad = TextEditingController();
    final ocupacion = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Crear Perfil',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(labelText: "Nombre", controller: nombre),
                const SizedBox(height: 16),
                CustomTextField(labelText: "Edad", controller: edad),
                const SizedBox(height: 16),
                CustomTextField(labelText: "Ocupación", controller: ocupacion),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    context.pushNamed('profile_screen', queryParameters: {
                      'nombre': nombre.text,
                      'edad': edad.text,
                      'ocupacion': ocupacion.text,
                    });
                  },
                  label: const Text('Guardar y ver perfil', style: TextStyle(fontSize: 18)),
                  icon: const Icon(Icons.save_rounded, size: 28),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}