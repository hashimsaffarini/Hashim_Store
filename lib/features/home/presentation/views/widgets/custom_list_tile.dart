import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

final List<CustomListTile> drawerList = [
  CustomListTile(
    title: 'Facebook',
    icon: Icon(
      FontAwesomeIcons.facebook,
      color: Colors.blue[800],
    ),
    onTap: () {},
  ),
  CustomListTile(
    title: 'Instagram',
    icon: const Icon(
      FontAwesomeIcons.instagram,
      color: Colors.pink,
    ),
    onTap: () {},
  ),
  CustomListTile(
    title: 'WhatsApp',
    icon: const Icon(
      FontAwesomeIcons.whatsapp,
      color: Colors.green,
    ),
    onTap: () {},
  ),
  CustomListTile(
    title: 'Phone',
    icon: const Icon(
      FontAwesomeIcons.phone,
      color: Colors.blue,
    ),
    onTap: () {},
  ),
  CustomListTile(
    title: 'Location',
    icon: const Icon(
      FontAwesomeIcons.locationArrow,
      color: Colors.red,
    ),
    onTap: () {},
  ),
];
