import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hashim_store/core/utils/url_lancher.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });
  final String title;
  final Icon icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon.icon,
        color: icon.color,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: onTap,
    );
  }
}

final List<CustomListTile> contactList = [
  CustomListTile(
    title: 'Facebook',
    icon: Icon(
      FontAwesomeIcons.facebook,
      color: Colors.blue[800],
    ),
    onTap: () async {
      UrlLancher.launchURL(
          'https://www.facebook.com/boutique.hashim2?paipv=0&eav=AfZl6fZGUiI4Hzqu76HwSMJRr7Ps_BBlhCntkOvDcIQlckN1E0d5Xh1YMAAG3FkGKBs');
    },
  ),
  CustomListTile(
    title: 'Instagram',
    icon: const Icon(
      FontAwesomeIcons.instagram,
      color: Colors.pink,
    ),
    onTap: () {
      UrlLancher.launchURL('https://www.instagram.com/boutique.hashim2/');
    },
  ),
  CustomListTile(
    title: 'WhatsApp',
    icon: const Icon(
      FontAwesomeIcons.whatsapp,
      color: Colors.green,
    ),
    onTap: () {
      UrlLancher.launchURL(
          'https://api.whatsapp.com/send/?phone=%2B972599686400&text&type=phone_number&app_absent=0');
    },
  ),
  CustomListTile(
    title: 'Phone',
    icon: const Icon(
      FontAwesomeIcons.phone,
      color: Colors.blue,
    ),
    onTap: () {
      UrlLancher.launchPhone('+972599686400');
    },
  ),
  CustomListTile(
    title: 'Location',
    icon: const Icon(
      FontAwesomeIcons.locationArrow,
      color: Colors.red,
    ),
    onTap: () {
      UrlLancher.launchURL(
          'https://www.google.com/maps/dir/32.3026944,35.094528/32.3152905,35.0290596/@32.3152718,35.0291085,21z/data=!4m4!4m3!1m1!4e1!1m0?entry=ttu');
    },
  ),
];
final List<CustomListTile> registeringList = [
  CustomListTile(
    title: 'Sign In',
    icon: const Icon(
      Icons.login,
      color: Colors.blue,
    ),
    onTap: () {},
  ),
  CustomListTile(
    title: 'Sign Up',
    icon: const Icon(
      Icons.person_add,
      color: Colors.green,
    ),
    onTap: () {},
  ),
];
