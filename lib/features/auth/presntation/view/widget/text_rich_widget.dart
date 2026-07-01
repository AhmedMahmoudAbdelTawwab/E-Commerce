import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextRichWidget extends StatelessWidget {
  TextRichWidget({
    super.key,
    required this.firstText,
    required this.secoundText,
    required this.recognizer,
  });
  String firstText;
  String secoundText;
  GestureRecognizer? recognizer;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      alignment: .topCenter,
      child: Text.rich(
        TextSpan(
          text: firstText,
          style: TextStyle(fontSize: 14, color: AppColors.textCoLor),
          children: [
            TextSpan(
              text: secoundText,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.textCoLor,
                fontWeight: .w700,
              ),
              recognizer: recognizer,
            ),
          ],
        ),
      ),
    );
  }
}
