import 'package:flutter/material.dart';
import 'package:topcare/utilities/routes.dart';
import 'package:topcare/views/widgets/main_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 32.0),
          child: Form(
            key: _formkey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Login',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 100.0),
              TextFormField(
                controller: _emailController,
                validator: ((val) =>
                    val!.isEmpty ? 'Please enter your Email' : null),
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your Email',
                ),
              ),
              const SizedBox(height: 30.0),
              TextFormField(
                controller: _passwordController,
                validator: ((val) =>
                    val!.isEmpty ? 'Please enter your Password' : null),
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your Password ',
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  child: const Text('Forgot your Password'),
                  onTap: () {},
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Mainbutton(
                text: 'Login',
                onTap: () {},
              ),
              const SizedBox(
                height: 24.0,
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  child: const Text(
                    'Regester',
                  ),
                  onTap: () => Navigator.of(context)
                      .pushNamed(AppRoutes.registerPageRoute),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
