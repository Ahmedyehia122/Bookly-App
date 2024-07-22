import 'package:bookly_app/core/functions/show_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> urlLauncher(
    {required BuildContext context, required String? url}) async {
  if (url != null) {
    final Uri _url = Uri.parse(url);
    if (await canLaunchUrl(_url)) {
      launchUrl(_url);
    } else {
      showSnackBar(context: context, text: 'Can\' launch Url');
    }
  }
}
