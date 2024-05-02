import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_page_header_text.dart';

class CartPageBody extends StatelessWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CartPageHeaderText(),
        SizedBox(height: 20),
        CartPageListViewItem(),
      ],
    );
  }
}

class CartPageListViewItem extends StatelessWidget {
  const CartPageListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: const ValueKey('cart_item'),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        log('Item dismissed');
      },
      background: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          color: AppColors.primaryColor,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: const Icon(Icons.delete, color: Colors.white, size: 28),
        ),
      ),
      child: Stack(
        children: [
          Card(
            elevation: 2,
            margin: const EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/test2.png',
                      height: 130,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'product.title',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'Quantity in stock: 10',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 223, 217, 217),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  color: AppColors.primaryColor,
                                  size: 20,
                                ),
                              ),
                              const SizedBox(width: 12),
                              const Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              const Spacer(),
                              const Text(
                                '₪99.99',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
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
          ),
        ],
      ),
    );
  }
}
