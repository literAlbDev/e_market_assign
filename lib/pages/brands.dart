import 'package:flutter/material.dart';

class BrandsPage extends StatefulWidget {
  const BrandsPage({super.key});

  @override
  State<BrandsPage> createState() => _BrandsPageState();
}

class _BrandsPageState extends State<BrandsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Icon(Icons.arrow_back),
        title: Center(child: Text("Brand Screen")),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 9),
          child: Icon(Icons.filter_alt),
        )],
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 7,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey),
              padding: EdgeInsets.all(11),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).scaffoldBackgroundColor),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/xiaomi-mi.png",
                      width: 45,
                      height: 45,
                    ),
                    Text(
                      "Xiaomi",
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey),
              padding: EdgeInsets.all(11),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).scaffoldBackgroundColor),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/apple.png",
                      width: 45,
                      height: 45,
                    ),
                    Text(
                      "Apple",
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey),
              padding: EdgeInsets.all(11),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).scaffoldBackgroundColor),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/huawei.png",
                      width: 45,
                      height: 45,
                    ),
                    Text(
                      "Huawei",
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey),
              padding: EdgeInsets.all(11),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).scaffoldBackgroundColor),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/samsung.png",
                      width: 45,
                      height: 45,
                    ),
                    Text(
                      "Samsung",
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey),
              padding: EdgeInsets.all(11),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).scaffoldBackgroundColor),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/toyota.png",
                      width: 45,
                      height: 45,
                    ),
                    Text(
                      "Levis",
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey),
              padding: EdgeInsets.all(11),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).scaffoldBackgroundColor),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/zara.jpg",
                      width: 45,
                      height: 45,
                    ),
                    Text(
                      "Zara",
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
