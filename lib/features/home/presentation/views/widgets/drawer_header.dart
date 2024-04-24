import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/assets.dart';

class DraweHeader extends StatelessWidget {
  const DraweHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text(
        'Hashim Store🛍️ ',
        style: TextStyle(
          fontFamily: GoogleFonts.inter().fontFamily,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      accountEmail: const Text(
        'Palestine, Tulkarm🇵🇸',
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
      ),
      currentAccountPicture: const CircleAvatar(
        backgroundImage: AssetImage(AssetsData.logo),
      ),
    );
  }
}
