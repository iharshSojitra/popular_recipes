import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: height * 0.25,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.tealAccent.shade400,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 23, vertical: 35),
                      child: Text(
                        "My home page",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 18,
                    right: 18,
                    child: Container(
                      height: height * 0.28,
                      width: width * 0.20,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 25, left: 40, bottom: 40, right: 50),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/profile_2.png'),
                                  radius: 35,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Anastasia",
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "ID: 12986504563",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "56",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Following",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Text(
                                      "786",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Follower",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Text(
                                      "12",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Tags",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 130,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cookbooks",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: height * 0.25,
                              width: width * 0.43,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/salad-collage.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Salads cook",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "18 courses",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: height * 0.25,
                              width: width * 0.44,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/pizza_!.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Kitchen flowers",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "24 courses",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: height * 0.25,
                              width: width * 0.43,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/cookies_1.JPG'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Salads cook",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "18 courses",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: height * 0.25,
                              width: width * 0.44,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/sberry.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Kitchen flowers",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "24 courses",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
