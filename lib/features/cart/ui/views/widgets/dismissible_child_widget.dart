import 'package:flutter/material.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/add_and_remove_widget.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_item_image.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/more_vert_widget.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';

class DismissibleChildWidget extends StatelessWidget {
  const DismissibleChildWidget({
    super.key,
    required this.product,
  });
  final ProductItemModel product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 2,
          margin: const EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CartItemImage(imgUrl: product.imgUrl),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Quantity in stock: ${product.quantity}',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 16),
                         AddAndRemoveWidget(
                          price: product.price,
                         ),
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
