import 'package:url_launcher/url_launcher.dart';
class UrlProvider {
  Future<void> goToUrl({strUrl}) async {
    final Uri _url = Uri.parse(strUrl);
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
}