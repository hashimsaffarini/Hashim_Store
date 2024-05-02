import 'package:flutter/material.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/add_and_remove_widget.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_item_image.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/more_vert_widget.dart';
class DismissibleChildWidget extends StatelessWidget {
  const DismissibleChildWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Card(
          elevation: 2,
          margin: EdgeInsets.all(8),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CartItemImage(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'product.title',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Quantity in stock: 10',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 16),
                        AddAndRemoveWidget(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        MoreVertWidget(),
      ],
    );
  }
}
