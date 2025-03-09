import 'package:flutter/material.dart';

class MediaQueryDemo extends StatefulWidget {
  const MediaQueryDemo({Key? key}) : super(key: key);

  @override
  State<MediaQueryDemo> createState() => _MediaQueryDemoState();
}

class _MediaQueryDemoState extends State<MediaQueryDemo> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //height: MediaQuery.of(context).size.height / 2,
              height: height * 0.25,
              width: width * 0.55,
              color: Colors.red,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              "Hello",
              style: TextStyle(fontSize: width * 0.05),
            ),
          ],
        ),
      ),
    );
  }
}
