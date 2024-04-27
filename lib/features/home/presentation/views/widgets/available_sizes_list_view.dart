import 'package:flutter/material.dart';

class AvailableSizesListView extends StatelessWidget {
  const AvailableSizesListView({super.key, required this.sizes});
  final List<String> sizes;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sizes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: AvailabelListViewItem(size: sizes[index]),
          );
        },
      ),
    );
  }
}

class AvailabelListViewItem extends StatelessWidget {
  const AvailabelListViewItem({
    super.key,
    required this.size,
  });

  final String size;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      child: Text(
        size,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
