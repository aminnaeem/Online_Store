import 'package:flutter/material.dart';
import 'package:onepointshop/widgets/announcements.dart';
import 'package:onepointshop/widgets/appbar_widgets.dart';
import 'package:onepointshop/widgets/listview_builder.dart';

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
              Announcements(),
              ListViewBuilder(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Orders",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OrdersView(status: 'To Pay',),
                      OrdersView(status: 'To Receive',),
                      OrdersView(status: 'To Review',),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OrdersView extends StatelessWidget {
  final String status;

  const OrdersView({
    super.key, required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        child: Text(
          status,
          style: TextStyle(
            fontSize: 12,
            color: Colors.blue
          ),
        ),
      ),
    );
  }
}









