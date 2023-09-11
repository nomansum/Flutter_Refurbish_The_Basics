import 'package:demo_project/styles/app_text.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/facebook.png',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "ME MYSELF",
                style: AppText.subtitle3,
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Image.asset('assets/images/post1.jpg'),
          SizedBox(
            height: 12,
          ),
          Text("Daily Reminder", style: AppText.subtitle3)
        ],
      ),
    );
    ;
  }
}
