import 'package:flutter/material.dart';
import 'package:onepointshop/widgets/buttons.dart';
import 'package:onepointshop/widgets/text_fields.dart';

class NewPasswordScreen extends StatelessWidget {
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController repeatPasswordController = TextEditingController();
  NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 52,
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(52)
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 36,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: RichText(
                  text: TextSpan(
                    text: "Setup New Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600
                    )
                  ),
                ),
              ),
              Text(
                "Please, setup a new password for\nyour account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.9,
                child: Column(
                  children: [
                    TextFields(hint: 'New Password', controller: newPasswordController),
                    SizedBox(
                      height: 8,
                    ),
                    TextFields(hint: 'Repeat Password', controller: repeatPasswordController)
                  ],
                ),
              ),
              NavigateButton(buttonText: "Save", color: Colors.blue,),
              CancelButton()
            ],
          ),
        )
      ),
    );
  }
}