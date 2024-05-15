import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:go_router/go_router.dart';
import 'package:hashim_store/core/utils/app_router.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _predictions = [];
  final List<String> _allProducts = [
    'T-shirt',
    'Shirt',
    'Jeans',
    'Jacket',
    'Sweater',
    'Hoodie',
    'Sweatshirt',
    'Pants',
    'Shorts',
    'Dress',
    'Skirt',
    'Blouse',
    'Coat',
    'Suit',
    'Tie',
    'Scarf',
    'Shoes',
    'Boots',
    'Sneakers',
    'Sandals',
    'Heels',
    'Flats',
    'Loafers',
    'Slippers',
    'Bags',
    'Backpacks',
    'Handbags',
    'Sunglasses',
    'Hats',
    'Beanies',
    'Caps',
    'Sports',
    'Gym',
    'Men',
    'Women',
    'Kids',
    'Accessories',
    'Jewelry',
    'Watches',
    'Formal',
    'Casual',
    'Sportswear',
    'Swimwear',
    'Underwear',
    'Baby',
  ];

  @override
  void initState() {
    super.initState();
    _controller.addListener(_updatePredictions);
  }

  void _updatePredictions() {
    final input = _controller.text.toLowerCase();
    setState(() {
      _predictions.clear();
      if (input.isNotEmpty) {
        _predictions.addAll(
          _allProducts
              .where((product) => product.toLowerCase().startsWith(input)),
        );
      }
    });
  }

  void _onPredictionTap(String prediction) {
    _controller.text = prediction;
    _predictions.clear();
    GoRouter.of(context).push(AppRouter.searchPage, extra: prediction);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 3.5),
        TextField(
          controller: _controller,
          onSubmitted: (value) {
            if (_predictions.contains(value)) {
              GoRouter.of(context).push(AppRouter.searchPage, extra: value);
            }
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            hintText: 'Search',
            hintStyle: GoogleFonts.inter(
              color: AppColors.greyPrimary,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
              color: AppColors.primaryColor,
            ),
            focusedBorder: customOutLineInputBorder(
              AppColors.primaryColor,
            ),
            enabledBorder: customOutLineInputBorder(
              Colors.grey.withOpacity(0.7),
            ),
          ),
        ),
        if (_predictions.isNotEmpty)
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _predictions
                  .map((prediction) => ListTile(
                        title: Text(prediction),
                        onTap: () => _onPredictionTap(prediction),
                        leading: const Icon(Icons.search,
                            color: AppColors.primaryColor),
                      ))
                  .toList(),
            ),
          ),
      ],
    );
  }

  OutlineInputBorder customOutLineInputBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide(color: color),
    );
  }
}
