import 'package:flutter/material.dart';
import 'package:wolf_manager_pdv/utils/colors.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsUtils.primaryColor,
        body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 150.0),
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
            ),
          ),
        ));
  }
}
