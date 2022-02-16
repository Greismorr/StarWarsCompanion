import 'package:flutter/material.dart';

class AvatarContainer extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;

  const AvatarContainer({
    Key? key,
    required this.backgroundColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: backgroundColor,
        border: Border.all(color: backgroundColor),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: child,
      ),
    );
  }
}
