import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:star_wars_companion/core/avatar/controllers/avatar_bloc.dart';
import 'package:star_wars_companion/core/widgets/loading_widget/loading_widget.dart';
import 'widgets/avatar_container/avatar_container.dart';

class AvatarButton extends StatelessWidget {
  final Color backgroundColor;
  final VoidCallback onPressed;

  const AvatarButton({
    Key? key,
    required this.backgroundColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      //Mostra o avatar atual como botão para a tela de edição de avatares.
      child: AvatarContainer(
        backgroundColor: backgroundColor,
        child: SvgPicture.string(
          FluttermojiFunctions().decodeFluttermojifromString(''),
          height: 30,
          width: 30,
        ),
      ),
    );
  }
}
