import 'package:flutter/material.dart';

class MoreVertWidget extends StatelessWidget {
  const MoreVertWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -10,
      top: -10,
      child: IconButton(
        icon: Transform.rotate(
          angle: 0.5,
          child: Icon(
            Icons.push_pin_sharp,
            size: 28,
            color: Theme.of(context).primaryColor,
          ),
        ),
        onPressed: null,
      ),
    );
  }
}
