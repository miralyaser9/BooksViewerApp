import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> lanchCustomUrl(context,String url) async {
  Uri uri=Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  }
  else{
    custom_snackbar(context, url);
  }
}

void custom_snackbar(context, String url) {
   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('cannot launch $url')));
}