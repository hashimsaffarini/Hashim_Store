import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/core/widgets/apple_widget.dart';
import 'package:hashim_store/core/widgets/custom_button.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';

class SingleChildScrollChildCartPage extends StatelessWidget {
  const SingleChildScrollChildCartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) {
          if (state is HomePageLoading) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is HomePageLoaded) {
            final products = state.cartProducts;
            final subTotal = products.fold<double>(
                0,
                (previousValue, element) =>
                    previousValue + element.price * element.counter);
            final discount = products.fold<double>(
                0,
                (previousValue, element) =>
                    previousValue +
                    (((element.price * element.counter) * (element.sale)) /
                        100));
            final totalCost = subTotal - discount;
            return Column(
              children: [
                const SizedBox(height: 5),
                const AppleWidget(),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Text(
                      'Sub-Total',
                      style: GoogleFonts.inter(
                        color: AppColors.greyPrimary,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '₪$subTotal',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      'Discount',
                      style: GoogleFonts.inter(
                        color: AppColors.greyPrimary,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '₪$discount',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(
                  color: AppColors.greyPrimary,
                  thickness: 0.8,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      'Total Cost',
                      style: GoogleFonts.inter(
                        color: AppColors.greyPrimary,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '₪$totalCost',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                CustomButton(
                  onPressed: () {},
                  borderRadius: 32,
                  child: const Text(
                    'Message The Store',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            );
          } else {
            return const Center(
              child: Text(
                'Error loading products from the server',
              ),
            );
          }
        },
      ),
    );
  }
}
