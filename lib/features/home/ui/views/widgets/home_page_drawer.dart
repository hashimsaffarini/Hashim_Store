import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hashim_store/core/utils/app_router.dart';
import 'package:hashim_store/features/home/ui/views/widgets/custom_list_tile.dart';
import 'package:hashim_store/features/home/ui/views/widgets/drawer_header.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: ListView(
        children: [
          const DrawerHeaderCentered(),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Contact Us :',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 12),
          for (var item in contactList) item,
          const Divider(),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Registering :',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 12),
          CustomListTile(
            title: 'Sign In',
            icon: const Icon(
              Icons.login,
              color: Colors.blue,
            ),
            onTap: () {
              GoRouter.of(context).push(AppRouter.signIn);
            },
          ),
          CustomListTile(
            title: 'Sign Up',
            icon: const Icon(
              Icons.person_add,
              color: Colors.green,
            ),
            onTap: () {
              GoRouter.of(context).push(AppRouter.signUp);
            },
          ),
          CustomListTile(
            title: 'Log Out',
            icon: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
