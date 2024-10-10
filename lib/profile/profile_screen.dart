import 'package:flutter/material.dart';
import 'package:onepointshop/widgets/announcements.dart';
import 'package:onepointshop/widgets/appbar_widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBarLeading(),
        title: AppBarTitle(),
        actions: [
          AppBarActionButtons(),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  text: "Hi, Amin!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w600
                  )
                ),
              ),
              Announcements()
            ],
          ),
        ),
      ),
    );
  }
}







