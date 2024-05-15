import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/core/utils/app_router.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({super.key});

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  void _showBrandsModal(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      context: context,
      builder: (BuildContext bc) {
        return Padding(
          padding: const EdgeInsets.all(24.0),
          child: Wrap(
            spacing: 4,
            runSpacing: 4,
            children: brands
                .map(
                  (brand) => GestureDetector(
                    onTap: () => handleTap(context, brand),
                    child: Chip(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: const BorderSide(
                          color: AppColors.greySecondary,
                        ),
                      ),
                      label: Text(brand),
                      labelStyle: GoogleFonts.interTight(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      backgroundColor: Theme.of(context).primaryColor,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }

  void handleTap(BuildContext context, String brand) {
    GoRouter.of(context)
        .push(
          AppRouter.searchPage,
          extra: brand,
        )
        .then((value) => setState(() {
              BlocProvider.of<HomePageCubit>(context).getAllProducts();
            }));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showBrandsModal(context),
      child: Container(
        height: 58,
        width: 58,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Icon(
          Icons.filter_alt_rounded,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}

final List<String> brands = [
  'Adidas',
  'Nike',
  'Puma',
  'Reebok',
  'Under Armour',
  'New Balance',
  'Diesel',
  'Levi\'s',
  'Tommy Hilfiger',
  'Calvin Klein',
  'Lacoste',
  'Hugo Boss',
  'Armani',
  'Versace',
  'Gucci',
  'Prada',
  'Balenciaga',
  'Diadora',
  'H&M',
  'Zara',
  'Pull&Shark',
  'Vans',
  'Columbia',
  'The North Face',
  'Timberland',
];
