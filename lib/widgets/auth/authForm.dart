// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';

class AuthForm extends StatelessWidget {

  var formData = <String, String>{};
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  bool isError = false;

  AuthForm({super.key});

  void submit(context) {
    formKey.currentState?.save();
    print(formData["email"]);
    print(formData["password"]);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 50),
          child: TextFormField(
            decoration: const InputDecoration(labelText: "Email"),
            textInputAction: TextInputAction.next,
            obscureText: false,
            onSaved: (e) => formData["email"] = e ?? "",
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: TextFormField(
            decoration: const InputDecoration(labelText: "Password"),
            textInputAction: TextInputAction.done,
            obscureText: true,
            onSaved: (e) => formData["password"] = e ?? "",
          ),
        ),
        isLoading
            ? const CircularProgressIndicator()
            : Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.05,
                margin: const EdgeInsets.only(top: 40),
                child: ElevatedButton(
                  onPressed: () => submit(context),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Theme.of(context).colorScheme.primary),
                  ),
                  child: const Text(
                    'Log-in',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
      ]),
    );
  }
}
