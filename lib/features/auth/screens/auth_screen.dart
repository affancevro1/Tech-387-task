import 'package:doctor_app/common/widgets/custom_button.dart';
import 'package:doctor_app/common/widgets/custom_textfield.dart';
import 'package:doctor_app/features/auth/services/auth_service.dart';
import 'package:flutter/material.dart';

enum Auth { signin, signup }

class AuthScreen extends StatefulWidget {
  static const String routeName = 'auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _signInFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService authService = AuthService();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void signInUser() {
    authService.signInUser(
        context: context,
        email: _emailController.text,
        password: _passwordController.text);
  }

  //Login Screen
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ProductArena_logo 1.png',
                width: 323.35,
                height: 66,
              ),
              Form(
                key: _signInFormKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: CustomTextField(
                        controller: _emailController,
                        hintText: 'E-mail',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: CustomTextField(
                        controller: _passwordController,
                        hintText: 'Password',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                        onTap: () {
                          if (_signInFormKey.currentState!.validate()) {
                            signInUser();
                          }
                        },
                        text: 'Login'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
