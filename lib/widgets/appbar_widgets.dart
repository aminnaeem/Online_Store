import 'package:flutter/material.dart';

class AppBarLeading extends StatelessWidget {
  const AppBarLeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: Colors.blue,
        child: CircleAvatar(
          radius: 18,
          backgroundColor: Colors.white,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Colors.blue,
              size: 18,
            ),
          ),
        ),
      ),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.blue)
      ),
      onPressed: () {
        
      },
      child: Text(
        "My Activity",
        style: TextStyle(
          color: Colors.white,
          fontSize: 14
        ),
      ),
    );
  }
}

class AppBarActionButtons extends StatelessWidget {
  const AppBarActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          iconSize: 20,
          onPressed: () {
            
          },
          icon: Icon(
            Icons.barcode_reader,
            color: Colors.blue,
          ),
        ),
        IconButton(
          iconSize: 20,
          onPressed: () {
            
          },
          icon: Icon(
            Icons.read_more_outlined,
            color: Colors.blue,
          ),
        ),
        IconButton(
          onPressed: () {
            
          },
          icon: Icon(
            Icons.settings_outlined,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}