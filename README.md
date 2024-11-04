# Register-User-App

# Tprofile_screen.dartscripción

Esta es una pequeña aplicación de Flutter que permite al usuario crear un perfil simple con su nombre, edad y ocupación. La aplicación consta de tres pantallas: una pantalla de inicio, una pantalla de creación de perfil, y una pantalla para visualizar el perfil del usuario.

## Instrucciones de Uso

1. **Pantalla de Inicio ("Home")**:
    - Al iniciar la aplicación, se muestra una pantalla de bienvenida con el título "Inicio".
    - La pantalla incluye un botón llamado **"Crear perfil"**.
    - Al presionar el botón, el usuario navega a la pantalla de creación de perfil.

2. **Pantalla de Creación de Perfil ("Crear Perfil")**:
    - Esta pantalla permite al usuario ingresar su información personal mediante `TextFields`.
    - Los campos a completar incluyen **nombre**, **edad**, y **ocupación**.
    - Hay un botón llamado **"Guardar y Ver Perfil"** que, al ser presionado, redirige a la pantalla de perfil, mostrando los datos ingresados.

3. **Pantalla de Perfil de Usuario ("Perfil")**:
    - En esta pantalla, se muestra el perfil del usuario, con sus datos (nombre, edad y ocupación).
    - También incluye un botón llamado **"Regresar a Inicio"** para que el usuario pueda volver a la pantalla principal.

## Estructura del Proyecto
lib/
├── main.dart                # Punto de entrada de la aplicación
├── home_screen.dart         # Pantalla de inicio
├── profile_form_screen.dart # Pantalla de creación de perfil
└── profile_screen.dart      # Pantalla para visualizar el perfil del usuario

## Requisitos

- Flutter SDK
- Dart SDK

## Instalación

1. Clonar este repositorio:
   ```bash
   git clone <URL del repositorio>

Uso
1.	Abre la aplicación y presiona “Crear perfil” en la pantalla de inicio.
2.	Llena los campos en la pantalla de creación de perfil y presiona “Guardar y Ver Perfil”.
3.	Visualiza el perfil en la pantalla de perfil y utiliza “Regresar a Inicio” para volver a la pantalla principal.

Estructura de Código

Cada pantalla está implementada en un archivo Dart separado para mantener una arquitectura limpia y modular.
1.	main.dart: Define las rutas de navegación entre las pantallas de la app.
2.	home_screen.dart: Contiene el diseño y lógica de la pantalla de inicio.
3.	profile_form_screen.dart: Maneja el formulario de creación de perfil y la validación de campos.
4.	profile_screen.dart: Muestra los datos del perfil y permite al usuario regresar a la pantalla de inicio.