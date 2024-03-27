import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactView extends StatelessWidget {
  static String id = "contactView";
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Icon(
            FontAwesomeIcons.instagram,
            size: 100,
          )
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://flutter.dev';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
