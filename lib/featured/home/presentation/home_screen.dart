import 'package:flutter/material.dart';
import 'package:news_app/core/theme/app_colore.dart';
import 'package:news_app/core/theme/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColore.ScaffoldBGColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Anderson",
                      style: Styles.textStyle16.copyWith(
                        color: AppColore.KwitheTExt,
                      ),
                    ),
                    Text(
                      "Have a nice day",
                      style: Styles.textStyle14.copyWith(
                        color: AppColore.KgreyTExt,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/pohto.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
