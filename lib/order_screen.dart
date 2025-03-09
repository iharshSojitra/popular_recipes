import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List imagess = [
    'assets/images/img_1.jpg',
    'assets/images/img_5.jpg',
    'assets/images/img_3.jpg',
    'assets/images/img_4.jpg',
    'assets/images/img_5.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Text(
                "Popular recipes",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          height: height * 0.17,
                          width: width * 0.43,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              image: DecorationImage(
                                  image: AssetImage(imagess[index]),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Acai bowl",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Green peppers Apple",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Green peppers  A-pple",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$12.25",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.tealAccent.shade400,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 35,
                                ),
                                Container(
                                  height: height * 0.03,
                                  width: width * 0.15,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.transparent,
                                      border: Border.all(
                                        color: Colors.tealAccent.shade400,
                                        width: 1.5,
                                      )),
                                  child: Center(
                                    child: Text(
                                      "Buy",
                                      style: TextStyle(
                                          color: Colors.tealAccent.shade400,
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
