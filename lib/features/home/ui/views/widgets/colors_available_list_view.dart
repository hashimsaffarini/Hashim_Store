import 'package:flutter/material.dart';

class ColorsAvailableListView extends StatelessWidget {
  const ColorsAvailableListView({super.key, required this.colors});
  final List<String> colors;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
              radius: 30,
              backgroundColor:
                  Color(int.parse(colors[index].split('(')[1].split(')')[0])),
            ),
          );
        },
      ),
    );
  }
}
