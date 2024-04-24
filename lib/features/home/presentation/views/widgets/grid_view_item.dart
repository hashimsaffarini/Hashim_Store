import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/assets.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    required this.title,
    required this.imgUrl,
    required this.price,
  });
  final String title;
  final String imgUrl;
  final int price;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2 - 38;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: width * 1.08,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imgUrl,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
              ),
            ),
            Positioned(
              right: 6,
              top: 6,
              child: Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: IconButton(
                    icon: const Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'Product Name',
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          '₪99.99',
          style: GoogleFonts.inter(
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

final List<GridViewItem> gridViewItems = [
  const GridViewItem(
    title: 'Product Name',
    imgUrl: AssetsData.test,
    price: 99,
  ),
  const GridViewItem(
    title: 'Product Name',
    imgUrl: AssetsData.test2,
    price: 99,
  ),
  const GridViewItem(
    title: 'Product Name',
    imgUrl: AssetsData.test3,
    price: 99,
  ),
  const GridViewItem(
    title: 'Product Name',
    imgUrl: AssetsData.test4,
    price: 99,
  ),
  const GridViewItem(
    title: 'Product Name',
    imgUrl: AssetsData.test5,
    price: 99,
  ),
  const GridViewItem(
    title: 'Product Name',
    imgUrl: AssetsData.test6,
    price: 99,
  ),
  const GridViewItem(
    title: 'Product Name',
    imgUrl: AssetsData.test7,
    price: 99,
  ),
  const GridViewItem(
    title: 'Product Name',
    imgUrl: AssetsData.test8,
    price: 99,
  ),
];
