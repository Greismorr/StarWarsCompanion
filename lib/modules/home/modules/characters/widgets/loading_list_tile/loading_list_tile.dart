import 'package:flutter/material.dart';

class LoadingListTile extends StatelessWidget {
  const LoadingListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}
