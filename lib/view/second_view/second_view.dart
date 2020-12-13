import 'package:flutter/material.dart';
import 'package:test_app/responsive_setup/responsive.dart';
import 'package:test_app/styles/text_style.dart';
import 'package:test_app/util/constants.dart';

class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Responsive.init(context);
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.vertical,
        itemBuilder: (ctx, index) {
          return Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/thumbnail.jpeg",
                          width: Responsive.widgetScaleFactor * 25,
                        ),
                        margin: EdgeInsets.only(bottom: DEFAULT_PADDING / 2.2),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                            height: Responsive.widgetScaleFactor * 7,
                            child: Image.asset("assets/images/avatar.webp")),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Text("Lonely Plant", style: StyleText.textStyle3Black),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Next Summer\non the fench\nRiveria",
                        style: StyleText.textStyle3Black),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
