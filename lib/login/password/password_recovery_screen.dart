import 'package:flutter/material.dart';
import 'package:onepointshop/widgets/buttons.dart';

class PasswordRecoveryScreen extends StatefulWidget {
  const PasswordRecoveryScreen({super.key});

  @override
  State<PasswordRecoveryScreen> createState() => _PasswordRecoveryScreenState();
}

class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen> {
  bool _isOption1Selected = true;
  bool _isOption2Selected = false;

  void _onOption1Pressed() {
    setState(() {
      _isOption1Selected = true;
      _isOption2Selected = false;
    });
  }

  void _onOption2Pressed() {
    setState(() {
      _isOption1Selected = false;
      _isOption2Selected = true;
    });
  }

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
                    OptionButton(text: "SMS", isSelected: _isOption1Selected, onPressed: _onOption1Pressed),
                    OptionButton(text: "Email", isSelected: _isOption2Selected, onPressed: _onOption2Pressed)
                  ],
                ),
              ),
              NavigateButton(buttonText: "Next", color: Colors.blue,),
              CancelButton()
            ],
          ),
        )
      ),
    );
  }
}

class OptionButton extends StatefulWidget {
  final String text;
  final bool isSelected;
  final Function onPressed;

  const OptionButton({required this.text, required this.isSelected, required this.onPressed, super.key});

  @override
  State<OptionButton> createState() => _OptionButtonState();
}

class _OptionButtonState extends State<OptionButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.isSelected ? Color(0xFFE5EBFC) : Color(0xFFFFEBEB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      onPressed: () {
        widget.onPressed();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              widget.text,
              style: TextStyle(
                color: widget.isSelected ? Colors.blue : Colors.black,
                fontWeight: widget.isSelected ? FontWeight.w600 : FontWeight.w400
              ),
              textAlign: TextAlign.center,
            ),
          ),
          widget.isSelected
              ? CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: Icon(
                    Icons.check_circle_rounded,
                    color: Colors.blue,
                  ),
              )
              : CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundColor: Color(0xFFFFEBEB),
                  radius: 10,
                ),
              ),
        ],
      ),
    );
  }
}