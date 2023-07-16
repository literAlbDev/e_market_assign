import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  bool _fav = false;
  List<String> _colors = ["orange", "green", "blue"];
  Object? _value = "orange";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Icon(Icons.arrow_back),
        title: Center(child: Text("Product Details")),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Badge(
              backgroundColor: Colors.transparent,
              textColor: Colors.black,
              offset: Offset(10, -10),
              label: Text('0'),
              child: Icon(Icons.shopping_bag),
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: ListView(
          children: [
            Image.asset(
              "assets/images/suit.png",
              height: 300,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Shoes, Brand new Watch. It's Beautiful",
                    style: TextStyle(fontSize: 15)),
                Row(
                  children: [
                    Icon(
                      Icons.swap_horiz,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _fav = !_fav;
                        });
                      },
                      child: Icon(
                        _fav ? Icons.favorite : Icons.favorite_border,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 7),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: "\$300.0    ",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 19)),
              TextSpan(
                  text: "\$320.0",
                  style: TextStyle(decoration: TextDecoration.lineThrough)),
            ])),
            SizedBox(height: 5),
            Text.rich(TextSpan(children: [
              TextSpan(text: "3.5", style: TextStyle(fontSize: 16)),
              WidgetSpan(
                  child: Icon(
                Icons.star,
                color: Colors.orangeAccent,
                size: 17,
              )),
              TextSpan(
                  text: "[350 Other]",
                  style: TextStyle(fontSize: 10, color: Colors.grey)),
            ])),
            SizedBox(height: 5),
            Text(
              "Size",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  child: Text(
                    "M",
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.orange,
                ),
                SizedBox(width: 7),
                CircleAvatar(
                  child: Text("L"),
                  backgroundColor: Colors.white,
                ),
                SizedBox(width: 7),
                CircleAvatar(
                  child: Text("XL"),
                  backgroundColor: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              "Color",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  child: Radio(
                    value: _colors[0],
                    groupValue: _value,
                    onChanged: (Object? val) {
                      setState(() {
                        _value = val;
                      });
                    },
                    fillColor: MaterialStateColor.resolveWith((states) =>
                        (_value == _colors[0]) ? Colors.white : Colors.orange),
                  ),
                  //CircleAvatar(backgroundColor: Colors.white, radius: 7),
                  backgroundColor: Colors.orange,
                ),
                SizedBox(width: 7),
                CircleAvatar(
                  child: Radio(
                    value: _colors[1],
                    groupValue: _value,
                    onChanged: (Object? val) {
                      setState(() {
                        _value = val;
                      });
                    },
                    fillColor: MaterialStateColor.resolveWith((states) =>
                        (_value == _colors[1]) ? Colors.white : Colors.green),
                  ),
                  backgroundColor: Colors.green,
                ),
                SizedBox(width: 7),
                CircleAvatar(
                  child: Radio(
                    value: _colors[2],
                    groupValue: _value,
                    onChanged: (Object? val) {
                      setState(() {
                        _value = val;
                      });
                    },
                    fillColor: MaterialStateColor.resolveWith((states) =>
                        (_value == _colors[2]) ? Colors.white : Colors.blue),
                  ),
                  backgroundColor: Colors.blue,
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.orange),
              child: Text(
                "Added to cart",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Description",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 5),
            Text(
              "This is a new product. It's amazing product for events. This is a valuable product",
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Review Products",
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
            SizedBox(height: 5),
            Text.rich(TextSpan(children: [
              TextSpan(text: "3.5", style: TextStyle(fontSize: 16)),
              WidgetSpan(
                  child: Icon(
                Icons.star,
                color: Colors.orangeAccent,
                size: 17,
              )),
              TextSpan(
                  text: "   [4 Reviews]",
                  style: TextStyle(fontSize: 10, color: Colors.grey)),
            ])),
          ],
        ),
      ),
    );
  }
}
