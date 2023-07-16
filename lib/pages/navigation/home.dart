import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Center(child: Text("Welcome Robert Carlos")),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Badge(
              child: Icon(Icons.notifications_none),
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: ListView(
          children: [
            SizedBox(
              width: double.infinity,
              height: 45,
              child: Material(
                elevation: 5,
                shadowColor: Colors.black,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide.none,
                ),
                child: TextFormField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search",
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    suffixIcon: Icon(Icons.search),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.red),
              child: Image.asset(
                "assets/images/banner.jpg",
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Categories",
                  style: TextStyle(fontSize: 17),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/categories");
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(fontSize: 15, color: Colors.orange),
                    ))
              ],
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 250,
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset("assets/images/sunglasses.jpeg",
                          width: 70, height: 70),
                      Text("Accessories"),
                      Text("100 Items"),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset("assets/images/shoes.jpeg",
                          width: 70, height: 70),
                      Text("Shoes"),
                      Text("1 Item"),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset("assets/images/baby.jpeg",
                          width: 70, height: 70),
                      Text("Baby and Toy"),
                      Text("200 Items"),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset("assets/images/bags.jpeg",
                          width: 70, height: 70),
                      Text("Bags"),
                      Text("120 Items"),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset("assets/images/tv.jpeg",
                          width: 70, height: 70),
                      Text("TV"),
                      Text("50 Items"),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset("assets/images/health.jpeg",
                          width: 70, height: 70),
                      Text("Health and Beauty"),
                      Text("100 Items"),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Offer Products",
                  style: TextStyle(fontSize: 17),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(fontSize: 15, color: Colors.orange),
                    ))
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey[300]!, width: 5)
                    ),
                    elevation: 0,
                    color: Colors.white,
                    child: Image.asset("assets/images/black.png", width: 250,height: 100,),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey[300]!, width: 5)
                    ),
                    elevation: 0,
                    color: Colors.white,
                    child: Image.asset("assets/images/suit.png", width: 250,height: 100,),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey[300]!, width: 5)
                    ),
                    elevation: 0,
                    color: Colors.white,
                    child: Image.asset("assets/images/phones.jpeg", width: 250,height: 100,),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
