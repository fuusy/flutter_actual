import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/home/daily_page.dart';
import 'package:flutter_app/page/home/found_page.dart';
import 'package:flutter_app/page/home/recommend_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync:this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        bottom: TabBar(
          controller: tabController,
          tabs: [
          new Tab(text: "发现"),
          new Tab(text: "推荐"),
          new Tab(text: "日报")
        ],
        ),
      ),

      body: TabBarView(controller: tabController,children: [
        new FoundPage(),
        new RecommendPage(),
        new DailyPage()
      ])

    );

  }

}

