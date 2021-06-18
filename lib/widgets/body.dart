import 'package:flutter/material.dart';
import 'package:portfolio/utils/util.dart';
import 'package:portfolio/widgets/contact_button.dart';

class Body extends StatelessWidget {
  Body({
    Key key,
  }) : super(key: key);

  final projectsList = [
    {
      'title': 'All the Feelzzz',
      "subtitle":
          "An alternative communication system for pain and difference in the body.",
      "image": "/appicon4.png"
    },
    {
      "title": "Autism Level UP!",
      "subtitle": "A web app for an educational consulting and resource group.",
      "image": "/aluptrans.png"
    },
    {
      "title": "All the Feelzzz",
      "subtitle":
          "An alternative communication system for pain and difference in the body.",
      "image": "/appicon4.png"
    },
    {
      "title": 'Autism Level UP!',
      "subtitle": 'A web app for an educational consulting and resource group.',
      "image": "/aluptrans.png"
    }
  ];

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
                                      onPressed: () {
                                        launchMailto();
                                      },
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "latest creations:",
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
                    itemCount: projectsList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Card(
                            elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(
                                      Icons.work,
                                    ),
                                    title: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: Text(
                                        projectsList[index]['title'],
                                      ),
                                    ),
                                    subtitle: Text(
                                      projectsList[index]['subtitle'],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        projectsList[index]['image'],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
