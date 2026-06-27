import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextRichWidget extends StatelessWidget {
  TextRichWidget({
    super.key,
    required this.firstText,
    required this.secoundText,
  });
  String firstText;
  String secoundText;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
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
          ),
        ],
      ),
    );
  }
}
