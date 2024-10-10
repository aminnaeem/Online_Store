import 'package:flutter/material.dart';
import 'package:onepointshop/widgets/buttons.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Image.asset('assets/logos/logo.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: RichText(
                text:const TextSpan(
                  text: 'One Point Shop',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w700
                  )
                )
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'Your One Point Soluiton\nfor Shopping',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black
                ),
              ),
            ),
            NavigateButton(buttonText: "Let's Get Started", color: Colors.blue,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: TextButton(onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I already have an account',
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
      ),
    );
  }
}

