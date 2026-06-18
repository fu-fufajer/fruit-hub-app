import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.price,
    required this.saladImage,
    this.widthCard = 174,
    this.heightCard = 183,
    this.backgroundColor = Colors.white,
    this.useShadow = true,
    this.onTap,
  });

  final String title;
  final String price;
  final Image saladImage;
  final double widthCard;
  final double heightCard;
  final Color backgroundColor;
  final bool useShadow;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: widthCard,
        height: heightCard,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: useShadow
              ? [
                  BoxShadow(
                    color: Colors.grey.shade100,
                    spreadRadius: 3,
                    blurRadius: 20,
                    offset: Offset(0, 20),
                  ),
                ]
              : [],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Center(child: SizedBox(height: 64, child: saladImage)),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              Row(
                children: [
                  Text(
                    "€ $price",
                    style: TextStyle(
                      color: Color(0xFFFFA451),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: fromCssColor("#FFF2E7"),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 15,
                      color: fromCssColor("#FFA451"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
