import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/widgets/general_button.dart';
import 'package:fresh_start/styles.dart';
import 'package:local_auth/local_auth.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LocalAuthentication _localAuthentication = LocalAuthentication();

  Future<void> _auth() async {
    bool authenticated = false;
    try {
      authenticated = await _localAuthentication.authenticate(
        localizedReason: "Autentícate para acceder",
        options: const AuthenticationOptions(stickyAuth: true, useErrorDialogs: true),
      );
    } catch (e) {
      print(e);
    }

    if (authenticated) {
      Navigator.pushReplacement<void, void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => MainView(), 
        ),
      );
    } else {
      print("Fallo auth");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Login.png'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 250.0),
              Container(
                margin: const EdgeInsets.only(left: 50.0, right: 50.0, top: 150.0, bottom: 5.0),
                padding: const EdgeInsets.only(top: 15.0, left: 25.0, right: 25.0),
                decoration: BoxDecoration(
                  color: colorPanel, 
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 30.0, bottom: 15.0),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Correo',
                          suffixIcon: Icon(Icons.email), 
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: const TextField(
                        obscureText: true, 
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Contraseña',
                          suffixIcon: Icon(Icons.visibility_off), 
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(left: 25.0, top: 30.0, right: 25.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center, 
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    '¿Olvidaste tu contraseña?',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: colorPrimaryComplementary, 
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: _auth, 
                              child: const GeneralButtonWidget(text: 'Iniciar Sesión'),
                            ),
                            const SizedBox(height: 35.0),
                            GestureDetector(
                              onTap: () {
                              },
                              child: const GeneralButtonWidget(text: 'Registrarse'),
                            ),
                            const Text("O"),
                            IconButton(
                              onPressed: _auth,
                              icon: const Icon(Icons.fingerprint),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
