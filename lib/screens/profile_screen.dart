import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widget/detail_row.dart';

class ProfileScreen extends StatelessWidget {
  final Map<String, dynamic> userData;

  ProfileScreen({required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xffa5dcfa),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileDetailRow(
                    label: 'Nombre',
                    value: userData['nombre'],
                  ),
                  ProfileDetailRow(
                    label: 'Apellido',
                    value: userData['apellido'],
                  ),
                  ProfileDetailRow(
                    label: 'Fecha de Nacimiento',
                    value: userData['fecha_nacimiento'],
                  ),
                  ProfileDetailRow(
                    label: 'Sexo',
                    value: userData['sexo'],
                  ),
                  ProfileDetailRow(
                    label: 'Edad',
                    value: userData['edad'].toString(),
                  ),
                  ProfileDetailRow(
                    label: 'Ocupación',
                    value: userData['ocupacion'],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: Text(
                'Regresar a Inicio',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xffa5dcfa),
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 32.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
