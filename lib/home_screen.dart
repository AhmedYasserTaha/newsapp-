import 'package:flutter/material.dart';
import 'package:news_app/core/theme/app_colore.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColore.ScaffoldBGColor,
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "Hello Anderson",
                  ),
                  Text(
                    "Hello Anderson",
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                    color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
