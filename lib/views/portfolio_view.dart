import "package:flutter/material.dart";
import 'package:portfolio/utils/util.dart';
import 'package:portfolio/widgets/body.dart';
import 'package:portfolio/widgets/contact_button.dart';
import 'package:portfolio/widgets/social_media.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white12,
        title: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 16.0, bottom: 9.0),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white12,
                foregroundImage: AssetImage(
                  "/avatar.jpeg",
                ),
              ),
            ),
            const Padding(
              // ignore: unnecessary_const
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "jacquelyn",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          ContactButton(
            buttonText: "contact me",
            icon: Icons.send_sharp,
            onPressed: () {
              launchMailto();
            },
          ),
        ],
      ),
      body: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Body(),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30),
              child: SocialMedia(),
            ),
          ),
        ],
      ),
    );
  }
}
