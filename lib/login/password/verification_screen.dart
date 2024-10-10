import 'package:flutter/material.dart';
import 'package:onepointshop/widgets/buttons.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
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
                    text: "Password Recovery",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600
                    )
                  ),
                ),
              ),
              Text(
                "How would you like to restore\nyour password?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    
                  ],
                ),
              ),
              NavigateButton(buttonText: "Send Again", color: Colors.pink,),
              CancelButton()
            ],
          ),
        )
      ),
    );
  }
}