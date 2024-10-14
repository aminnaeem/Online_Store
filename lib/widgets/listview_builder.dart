import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget { // for Recently Viewed list
  const ListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recently Viewed",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),
        ),
        Container(
          height: 72,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 24,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

