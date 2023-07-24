import 'package:flutter/material.dart';
import 'package:g5amst/constants/colors.dart';
import 'package:g5amst/utils/util.dart';
import 'package:g5amst/views/login/login_bottom_sheet_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginView createState() => _LoginView();
}

class _LoginView extends State<LoginView> {
  final String _imageBackground = "bg2.jpg";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.55), BlendMode.darken),
                image: AssetImage("assets/images/$_imageBackground"),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: _bodyLogin()));
  }

  Widget _bodyLogin() {
    return SingleChildScrollView(
      // ignore: sized_box_for_whitespace
      child: Container(
          height: Util.sizeScreen(context: context).height,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 48, bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: 300),
                const Text(
                  "DessertApp",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(height: 16),
                const Text(
                  "Ejemplo de aplicación",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(height: 8),
                const Text(
                  "Aplicación de desafío para el laboratorio",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(flex: 1),
                // ignore: sized_box_for_whitespace
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _onLoginTap,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(
                        top: 16,
                        bottom: 16,
                      ),
                      backgroundColor: Colors.white,
                      textStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Iniciar Sesión",
                      style: TextStyle(
                        color: AppColors.text_light,
                      ),
                    ),
                  ),
                ),
                Container(height: 20),
                // ignore: sized_box_for_whitespace
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pushReplacementNamed("/register"),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(
                        top: 16,
                        bottom: 16,
                      ),
                      backgroundColor: Colors.white,
                      textStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Registrarse",
                      style: TextStyle(
                        color: AppColors.text_light,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  void _onLoginTap() {
    Util.showBottomSheet(
      context: context,
      bottomSheet: const LoginBottomSheet(),
    );
  }
}
