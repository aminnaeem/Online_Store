import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.4,
            decoration: const BoxDecoration(
              color: Colors.amber
            ),
            child: const Center(
              child: Text(
                'New Collection',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30
                ),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                height: 200,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent
                ),
                child: const Center(
                  child: Text(
                    'Summer Sale',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 30
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                height: 200,
                decoration: const BoxDecoration(
                  color: Colors.blueGrey
                ),
                child: const Center(
                  child: Text(
                    "Men's Hoodies",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 30
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}