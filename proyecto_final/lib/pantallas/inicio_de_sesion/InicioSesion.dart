import 'package:flutter/material.dart';
import 'package:proyecto_final/pantallas/home/BarraNavegacion.dart';

//Widget para la pantalla de inicio
class InicioSesion extends StatelessWidget {
  const InicioSesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar Sesión'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: LoginForm(),
      ),
    );
  }
}

//Widget para formulario de inicio de inicio de sesion
class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController =
      TextEditingController(text: 'usuario@correo.com');
  final TextEditingController _passwordController =
      TextEditingController(text: 'contrasena');

  void _login() {
    // Aquí podrías implementar la lógica de autenticación
    String email = _emailController.text;
    String password = _passwordController.text;

    // Ejemplo de verificación básica
    if (email == 'usuario@correo.com' && password == 'contrasena') {
      // Usuario autenticado, podrías navegar a la siguiente pantalla
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BarraNavegacion()),
      );
    } else {
      // Mostrar mensaje de error o realizar otra acción
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error de inicio de sesión'),
            content: const Text('Credenciales inválidas. Inténtalo de nuevo.'),
            actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: _emailController,
          decoration: const InputDecoration(
            labelText: 'Correo Electrónico',
          ),
        ),
        const SizedBox(height: 12.0),
        TextField(
          controller: _passwordController,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Contraseña',
          ),
        ),
        const SizedBox(height: 24.0),
        ElevatedButton(
          onPressed: _login,
          child: const Text('Iniciar Sesión'),
        ),
      ],
    );
  }
}
