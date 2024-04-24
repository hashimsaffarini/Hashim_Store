import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/assets.dart';

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
          UserAccountsDrawerHeader(
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
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Contact Us :',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 12),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.facebook,
              color: Colors.blue[800], // Facebook's iconic blue color
            ),
            title: const Text(
              'Facebook',
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.instagram,
              color: Colors.pink,
            ),
            title: const Text('Instagram'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.whatsapp,
              color: Colors.green,
            ),
            title: const Text('WhatsApp'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.phone,
              color: Colors.blue,
              size: 20,
            ),
            title: const Text('Phone'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.locationArrow,
              color: Colors.red,
            ),
            title: const Text('Location'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
