import 'package:flutter/material.dart';
import 'package:onepointshop/widgets/buttons.dart';
import 'package:onepointshop/widgets/text_fields.dart';

class CreateAccount extends StatefulWidget {

  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController numberController = TextEditingController();

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
                    text: "Create\nAccount",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: IconButton(
                    style: ButtonStyle(
                      padding: const WidgetStatePropertyAll(EdgeInsets.all(20)),
                      side: WidgetStateProperty.all(
                        const BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.blue,
                          width: 1
                        )
                      )
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.blue,
                    )
                  ),
                ),
                Column(
                  children: [
                    TextFields(hint: 'Email', controller: emailController,),
                    SizedBox(
                      height: 8,
                    ),
                    TextFields(hint: 'Password', controller: passwordController,),
                    SizedBox(
                      height: 8,
                    ),
                    TextFields(hint: 'Your Number', controller: numberController,)
                  ]
                ),
                NavigateButton(buttonText: "Done", color: Colors.blue,),
                CancelButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}



