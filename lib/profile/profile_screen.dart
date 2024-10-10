import 'package:flutter/material.dart';
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
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}





