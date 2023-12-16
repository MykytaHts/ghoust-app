import 'package:auto_route/auto_route.dart';
import 'package:deepstatebllog/backbone/di.dart';
import 'package:deepstatebllog/presentation/blocs/auth/auth_bloc.dart';
import 'package:deepstatebllog/presentation/router/app_router.dart';
import 'package:deepstatebllog/presentation/widgets/custom_textfield.dart';

import 'package:flutter/material.dart';

@RoutePage()
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool emailValid = false;
  bool passwordValid = false;
  bool isPasswordVisible = false;
  final _authBloc = sl<AuthBloc>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool isEmailValid(String email) {
    return RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(email);
  }

  void checkPassLength() {
    setState(() {
      passwordValid = _passwordController.text.length >= 8;
    });
  }

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register account',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Email field',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
          ),
          CustomTextField(
            callback: (value) => isEmailValid(_emailController.text),
            controller: _emailController,
            prefixIcon: Icons.email,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Password field',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
          ),
          CustomTextField(
            toggleVisibilityCallback: togglePasswordVisibility,
            callback: (value) => checkPassLength(),
            obscure: isPasswordVisible,
            controller: _passwordController,
            prefixIcon: Icons.password,
            suffixIcon: Icons.visibility,
          ),
          const Text(
            'Password should be more than 8 characters.',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: isEmailValid(_emailController.text) &&
                            _passwordController.value.text.length >= 8
                        ? () {
                            _authBloc.add(SignUpWithEmailEvent(
                                _emailController.text,
                                _passwordController.text));
                            context.router.navigate(const HomeRoute());
                          }
                        : null,
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 15),
                    )),
                const Spacer(),
                TextButton(
                    onPressed: isEmailValid(_emailController.text) &&
                            _passwordController.value.text.length >= 8
                        ? () {
                            _authBloc.add(SignInWithEmailEvent(
                                _emailController.text,
                                _passwordController.text));
                            context.router.navigate(const HomeRoute());
                          }
                        : null,
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 15),
                    )),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
