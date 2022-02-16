import 'package:flutter/material.dart';
import 'package:star_wars_companion/app/theme/app_text_styles.dart';

class ErrorTextWidget extends StatelessWidget {
  final String errorText =
      "Falha na comunicação com o servidor. Por favor, tente novamente mais tarde.";

  const ErrorTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorText,
        style: AppTextStyles.textRegular,
        textAlign: TextAlign.center,
      ),
    );
  }
}
