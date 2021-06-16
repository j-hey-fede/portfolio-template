import "package:flutter/material.dart";
import 'package:portfolio/widgets/contact_button.dart';

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
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [const Body()],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.white12,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                          opacity: 0.42,
                          child: Image.asset(
                            "/avatar.jpeg",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(height: 280),
                                const Text(
                                  "hello world!\nI'm Jacquelyn, a mobile developer.",
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: ContactButton(
                                    buttonText: "get in touch",
                                    icon: Icons.mail_outline,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white12,
          ),
        ),
      ],
    );
  }
}
