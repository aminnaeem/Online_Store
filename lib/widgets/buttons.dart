import 'package:flutter/material.dart';

class NavigateButton extends StatelessWidget {
  final String buttonText;
  final color;

  const NavigateButton({
    super.key, required this.buttonText, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: SizedBox(
        height: 60,
        width: MediaQuery.of(context).size.width*0.9,
        child: ElevatedButton(onPressed: () {},
          
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 22
            ),
          ),
        ),
      ),
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}