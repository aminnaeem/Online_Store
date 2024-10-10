import 'package:flutter/material.dart';
import 'package:onepointshop/widgets/buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    text: "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Text(
                    "Good to see you back! ♥",
                    style: TextStyle(
                      color: Colors.black
                    ),
                  ),
                ),
                Column(
                  children: [
                    TextField(
                      onTapOutside: (event) => FocusScope.of(context).unfocus(),
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.blue
                          )
                        )
                      ),
                    ),
                    NavigateButton(buttonText: "Next", color: Colors.blue,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: GestureDetector(onTap: () {},
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.black
                            ),
                          ),
                        )
                      ),
                    )
                  ]
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}