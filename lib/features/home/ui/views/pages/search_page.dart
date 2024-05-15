import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';
import 'package:hashim_store/features/home/ui/views/widgets/search_page_body.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    super.key,
    required this.brand,
  });
  final String brand;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit()..getAllProducts(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Search Results for "$brand"',
            style: GoogleFonts.interTight(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: SearchPageBody(
          brand: brand,
        ),
      ),
    );
  }
}
