import 'package:flutter/material.dart';

import '../../utilities/routes.dart';
import '../widgets/main_button.dart';

class RegistePage extends StatefulWidget {
  const RegistePage({super.key});

  @override
  State<RegistePage> createState() => _RegistePageState();
}

class _RegistePageState extends State<RegistePage> {
  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
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
                'Register',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 100.0),
              TextFormField(
                controller: _nameController,
                validator: ((val) =>
                    val!.isEmpty ? 'Please enter your Name' : null),
                decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter your Name',
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                controller: _emailController,
                validator: ((val) =>
                    val!.isEmpty ? 'Please enter your Email' : null),
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your Email',
                ),
              ),
              const SizedBox(height: 20.0),
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
                height: 24.0,
              ),
              Mainbutton(
                text: 'Register',
                onTap: () {},
              ),
              const SizedBox(
                height: 24.0,
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  child: const Text(
                    'Login',
                  ),
                  onTap: () =>
                      Navigator.of(context).pushNamed(AppRoutes.LoginPageRoute),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
