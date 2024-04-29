import 'package:flutter/material.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/core/utils/assets.dart';

class CardFavoritePage extends StatelessWidget {
  const CardFavoritePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                AssetsData.test5,
                height: 130,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Product',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Add To Cart Now!',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.greyPrimary,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '₪99.99',
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColors.greyPrimary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
