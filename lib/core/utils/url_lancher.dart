import 'package:url_launcher/url_launcher.dart';

class UrlLancher {
  static void launchURL(String url) async {
    final urlLancher = Uri.parse(url);
    if (await canLaunchUrl(urlLancher)) {
      await launchUrl(urlLancher);
    } else {
      throw 'Could not launch $urlLancher';
    }
  }

  static void launchPhone(String phone) async {
    final urlLancher = Uri.parse('tel:$phone');
    if (await canLaunchUrl(urlLancher)) {
      await launchUrl(urlLancher);
    } else {
      throw 'Could not launch $urlLancher';
    }
  }
}
