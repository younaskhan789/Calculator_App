import 'package:bootcamppp/constant.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final Color color;
  final VoidCallback? onPressed;

  const CustomButton({Key? key, this.title, this.color= const Color(0xffa5a5a5), this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            height: 80,
            decoration: BoxDecoration(shape: BoxShape.circle,
                color: color,
            ),
            child: Center(
              child: Text(
              title!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: WhiteColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
