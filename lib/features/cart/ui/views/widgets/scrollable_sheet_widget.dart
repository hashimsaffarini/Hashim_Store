import 'package:flutter/material.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/single_child_scroll_child_cart_page.dart';
class ScrollableSheetWidget extends StatelessWidget {
  const ScrollableSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.39,
      minChildSize: 0.1,
      maxChildSize: 0.42,
      builder: (context, scrollController) {
        return Container(
          decoration: customBoxDecoration(),
          child: SingleChildScrollView(
            controller: scrollController,
            child: const SingleChildScrollChildCartPage(),
          ),
        );
      },
    );
  }

  BoxDecoration customBoxDecoration() {
    return BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        );
  }
}
