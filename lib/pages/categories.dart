import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Center(child: Text("Category Screen")),
          bottom: TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.orange[100],

            ),
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: EdgeInsets.all(0),
            indicatorPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
            overlayColor: MaterialStateProperty.resolveWith((states) => Colors.transparent),
            labelColor: Colors.black,
            tabs: [
              Tab(text: "Accessories",),
              Tab(text: "Shoes"),
              Tab(text: "Baby and Toy"),
              Tab(text: "Bags"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            View1(),
            Center(child: Text("No Available Product", style: TextStyle(color: Colors.blue),)),
            Center(child: Text("No Available Product", style: TextStyle(color: Colors.orange),)),
            Center(child: Text("No Available Product", style: TextStyle(color: Colors.green),)),
          ],
        ),
      ),
    );
  }
}

class View1 extends StatelessWidget {
  const View1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/headphone.jpeg", width: 100, height: 100),
              Column(
                children: [
                  Text("Headphone", style: TextStyle(fontSize: 20),),
                  Text("1 Item", style: TextStyle(fontSize: 10, color: Colors.orange),),
                ],
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/airpods.jpeg", width: 100, height: 100),
              Column(
                children: [
                  Text("Earphone", style: TextStyle(fontSize: 20),),
                  Text("1 Item", style: TextStyle(fontSize: 10, color: Colors.orange),),
                ],
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/phones.jpeg", width: 100, height: 100),
              Column(
                children: [
                  Text("Samsung Phone", style: TextStyle(fontSize: 20),),
                  Text("1 Item", style: TextStyle(fontSize: 10, color: Colors.orange),),
                ],
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ],
      ),
    );
  }
}
