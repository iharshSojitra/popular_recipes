import 'package:flutter/material.dart';

class GridDemo extends StatelessWidget {
  const GridDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              // scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              itemCount: 20,
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        "${index}",
                        textScaleFactor: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Acai Bowl",
                    textScaleFactor: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Mary",
                    textScaleFactor: 1,
                  ),
                ],
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 15,
                  mainAxisExtent: 240),
            ),
          )
        ],
      ),
    );
  }
}
