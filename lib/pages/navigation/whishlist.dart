import 'package:flutter/material.dart';

class WhishlistPage extends StatefulWidget {
  const WhishlistPage({super.key});

  @override
  State<WhishlistPage> createState() => _WhishlistPageState();
}

class _WhishlistPageState extends State<WhishlistPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          Center(
            child: Text(
              "WishList Screen",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(5),
                  constraints: const BoxConstraints(maxHeight: 90),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          "assets/images/red.png",
                          width: 80,
                          height: 80,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Red Shirt",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Classic",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.orange),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text.rich(TextSpan(children: [
                                      TextSpan(
                                          text: "\$340.0    ",
                                          style: TextStyle(fontSize: 17)),
                                      TextSpan(
                                          text: "\$320.0",
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontSize: 13)),
                                    ])),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                              height: 30,
                              child: IconButton(
                                onPressed: () {},
                                alignment: Alignment.center,
                                iconSize: 15,
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                ),
                                icon: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(5),
                  constraints: const BoxConstraints(maxHeight: 90),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          "assets/images/blue.png",
                          width: 80,
                          height: 80,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "blue Shirt",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Classic",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.orange),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text.rich(TextSpan(children: [
                                      TextSpan(
                                          text: "\$540.0    ",
                                          style: TextStyle(fontSize: 17)),
                                      TextSpan(
                                          text: "\$320.0",
                                          style: TextStyle(
                                              decoration:
                                              TextDecoration.lineThrough,
                                              fontSize: 13)),
                                    ])),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                              height: 30,
                              child: IconButton(
                                onPressed: () {},
                                alignment: Alignment.center,
                                iconSize: 15,
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                ),
                                icon: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(5),
                  constraints: const BoxConstraints(maxHeight: 90),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          "assets/images/blackt.png",
                          width: 80,
                          height: 80,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Black Shirt",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Classic",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.orange),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text.rich(TextSpan(children: [
                                      TextSpan(
                                          text: "\$220.0    ",
                                          style: TextStyle(fontSize: 17)),
                                      TextSpan(
                                          text: "\$320.0",
                                          style: TextStyle(
                                              decoration:
                                              TextDecoration.lineThrough,
                                              fontSize: 13)),
                                    ])),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                              height: 30,
                              child: IconButton(
                                onPressed: () {},
                                alignment: Alignment.center,
                                iconSize: 15,
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                ),
                                icon: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
