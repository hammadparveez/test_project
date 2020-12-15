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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: DEFAULT_PADDING / 2),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //crossAxisCount: 2,
              maxCrossAxisExtent: Responsive.widgetScaleFactor * 40,
              crossAxisSpacing: 0,
              childAspectRatio:
                  (Responsive.deviceWidth / Responsive.deviceHeight / 1.07)),
          itemCount: 5,
          scrollDirection: Axis.vertical,
          itemBuilder: (ctx, index) {
            return Center(
              child: Container(
                padding: EdgeInsets.symmetric(),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: Responsive.widgetScaleFactor * 26,
                          height: Responsive.widgetScaleFactor * 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/thumbnail.jpeg"),
                                fit: BoxFit.cover,
                              )),
                          margin: EdgeInsets.only(bottom: DEFAULT_PADDING / 2),
                        ),
                        Positioned(
                          left: 5,
                          bottom: 0,
                          child: Container(
                              height: Responsive.widgetScaleFactor * 7,
                              child: Image.asset("assets/images/avatar.webp")),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Lonely Plant",
                              style: StyleText.textStyle3Black54),
                          SizedBox(height: 7),
                          Text("Next Summer\non the fench\nRiveria",
                              style: StyleText.textStyle3Black),
                          SizedBox(height: 8),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            color: Colors.deepPurple,
                            textColor: Colors.white,
                            onPressed: () {},
                            child: Text("Follow"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
