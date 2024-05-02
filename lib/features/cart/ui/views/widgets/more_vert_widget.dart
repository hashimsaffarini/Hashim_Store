import 'package:flutter/material.dart';
class MoreVertWidget extends StatelessWidget {
  const MoreVertWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8,
      right: 8,
      child: IconButton(
        icon: const Icon(
          Icons.more_vert,
          size: 28,
        ),
        color: const Color(0xff9B9B9B),
        onPressed: () {},
      ),
    );
  }
}
