import "package:flutter/material.dart";

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
                      onPressed: () {},
                      icon: Image.asset('/facebook.png', width: 30, height: 30),
                      label: const Text(''),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon:
                          Image.asset('/instagram.png', width: 30, height: 30),
                      label: const Text(''),
                    ),
                    TextButton.icon(
                      onPressed: () {},
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
}
