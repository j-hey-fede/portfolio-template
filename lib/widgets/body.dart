import 'package:flutter/material.dart';
import 'package:portfolio/widgets/contact_button.dart';

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
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset(
                                "/avatar.jpeg",
                                fit: BoxFit.cover,
                                width: 600,
                                height: 600,
                              ),
                            ),
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
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 30.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "hello world!\nI'm Jacquelyn, a mobile developer.",
                                      style: TextStyle(
                                        fontSize: 32,
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 22, vertical: 16.0),
                                    child: ContactButton(
                                      buttonText: "get in touch",
                                      icon: Icons.mail_outline,
                                      onPressed: () {},
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
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "creations:",
                  style: TextStyle(
                    fontSize: 42,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 100.0, right: 30.0, left: 8.0),
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            Card(
                              elevation: 3,
                              child: Column(
                                children: const [
                                  ListTile(
                                    leading: Icon(
                                      Icons.work,
                                    ),
                                    title: Text(
                                      "Hello",
                                    ),
                                    subtitle: Text(
                                        "Some awesome project thing goes here..."),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
