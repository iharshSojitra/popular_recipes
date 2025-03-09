import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List Mapp = [
    {
      "title": "Acai bowl",
      "subtitle": "Mary",
    },
    {
      "title": "feature Salad",
      "subtitle": "Anastasia",
    },
    {
      "title": "Acai bowl",
      "subtitle": "Mary",
    },
    {
      "title": "feature Salad",
      "subtitle": "Anastasia",
    },
  ];
  List images = [
    "assets/images/food_1.png",
    "assets/images/food_3.png",
    "assets/images/food_6.jpg",
    "assets/images/strawberry.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explore",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 10, left: 20),
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide.none),
                        hintText: "Search for Food",
                        suffixIcon: Icon(
                          Icons.search,
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "More",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 390,
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 5,
                      mainAxisExtent: 190,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(images[index]),
                                    fit: BoxFit.cover),
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            Mapp[index]["title"],
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            Mapp[index]["subtitle"],
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "More",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/food_6.jpg",
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(17)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
