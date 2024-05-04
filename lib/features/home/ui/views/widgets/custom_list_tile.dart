import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
      launchURL(
        'https://flutter.dev',
      );
    },
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
void launchURL(String urlLancher) async {
  final url = Uri.parse(urlLancher);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
