import 'package:flutter/material.dart';

class InstagramSection extends StatelessWidget {
  InstagramSection({super.key});

  final List<String> imagePaths = [
    'assets/news_images/instaimages.png',
    'assets/news_images/instaimages.png',
    'assets/news_images/instaimages.png',
    'assets/news_images/instaimages.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Container(
            width: 125,
            height: 200,
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: Color(0xFF3A3A3A),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePaths[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
