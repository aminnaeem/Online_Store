import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {

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
                    text: "Hello, Romana!!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w600
                    )
                  ),
                ),
              ),
              Text(
                "Type your password",
                style: TextStyle(
                  color: Colors.black
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: GestureDetector(onTap: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not You?',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.arrow_right_rounded,
                            color: Colors.white,
                            size: 26,
                          )
                        ),
                      )
                    ],
                  )
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

// class DottedPasswordField extends StatefulWidget {
//   final int passwordLength;

//   const DottedPasswordField({required this.passwordLength, super.key});

//   @override
//   State<DottedPasswordField> createState() => _DottedPasswordFieldState();
// }

// class _DottedPasswordFieldState extends State<DottedPasswordField> {
//   final GlobalKey<_DottedPasswordFieldState> _dottedPasswordFieldKey = GlobalKey();
//   List<Widget> _passwordDots = [];

//   @override
//   void initState() {
//     super.initState();
//     for (int i = 0; i < widget.passwordLength; i++) {
//       _passwordDots.add(Container(
//         width: 10,
//         height: 10,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           border: Border.all(color: Colors.grey),
//         ),
//       ));
//     }
//   }

//   void _updateDots(String password) {
//     setState(() {
//       for (int i = 0; i < widget.passwordLength; i++) {
//         if (i < password.length) {
//           _passwordDots[i] = Container(
//             width: 10,
//             height: 10,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.grey,
//             ),
//           );
//         } else {
//           _passwordDots[i] = Container(
//             width: 10,
//             height: 10,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               border: Border.all(color: Colors.grey),
//             ),
//           );
//         }
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         FocusScope.of(context).requestFocus(FocusNode());
//       },
//       child: Row(
//         children: _passwordDots,
//       ),
//     );
//   }
// }