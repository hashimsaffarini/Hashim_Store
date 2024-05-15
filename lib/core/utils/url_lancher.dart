import 'dart:math';

import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  static void launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  static void launchPhone(String phone) async {
    final uri = Uri.parse('tel:$phone');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  static void launchMessenger() async {
    final message = Uri.encodeComponent(createMessage());
    final uri = Uri.parse('https://m.me/boutique.hashim2?text=$message');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch Messenger for boutique hashim with message $message';
    }
  }

  static String createMessage() {
    String message =
        'Hello, I would like to inquire about the following items:\n';
    log(HomePageCubit.cartProductsCubit.length);
    for (var item in HomePageCubit.cartProductsCubit) {
      message += '${item.imgUrl}x ${item.title} at ${item.price}₪ \n';
    }
    message += 'Please let me know the availability and total cost. Thank you!';
    return message;
  }
}
