import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/services/auth_services.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/core/utils/assets.dart';

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomePageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthServicesImpl().getName() != null
              ? Text(
                  'Welcome, ${AuthServicesImpl().getName()}',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryColor,
                  ),
                )
              : Text(
                  'Welcome, Guest',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryColor,
                  ),
                ),
          Text(
            'Go Shopping Now!',
            style: GoogleFonts.inter(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      leading: Builder(
        builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              size: 30,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        },
      ),
      actions: const [
        CircleAvatar(
          backgroundImage: AssetImage(
            AssetsData.profileImage,
          ),
          radius: 24,
        ),
        SizedBox(width: 36),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
