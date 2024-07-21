import 'package:url_launcher/url_launcher.dart';

Future<void> urlLauncher({required String url}) async {
  final Uri _url = Uri.parse(url);
  if (await canLaunchUrl(_url)) {
    launchUrl(_url);
  }
}
