// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:wolf_manager_pdv/utils/colors.dart';
import 'package:wolf_manager_pdv/widgets/auth/authForm.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsUtils.primaryColor,
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 80),
              child: Image.asset(
                "assets/images/fox-cash.png",
                width: 150,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 50.0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      color: ColorsUtils.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: ColorsUtils.black,
                          blurRadius: 10,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.height * 0.45,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("Insira suas credenciais", style: TextStyle(
                          fontSize: 50,
                        ), textAlign: TextAlign.center,),
                        AuthForm(),
                      ],
                    )),
              ),
            ),
          ],
        ));
  }
}
