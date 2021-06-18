import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: Text(
            "iOS. watchOS, iPadOS, macOS, flutter. mobile. web. fullstack.\n Create with me.",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xfffbefd9),
                borderRadius: BorderRadius.circular(
                  14.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    TextButton.icon(
                      onPressed: () => launchURL("https://www.facebook.com"),
                      icon: Image.asset('/facebook.png', width: 30, height: 30),
                      label: const Text(''),
                    ),
                    TextButton.icon(
                      onPressed: () => launchURL("https://www.instagram.com"),
                      icon:
                          Image.asset('/instagram.png', width: 30, height: 30),
                      label: const Text(''),
                    ),
                    TextButton.icon(
                      onPressed: () => launchURL("https://www.twitter.com"),
                      icon: Image.asset('/twitter.png', width: 30, height: 30),
                      label: const Text(''),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void launchURL(String url) async {
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }
}
