import 'package:flutter/material.dart';

import 'home.dart';
import 'movies.dart';
import 'music.dart';
import 'original.dart';
import 'videos.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  //final _tabs = List.generate(10, (index) => 'Tab#${index + 1}');
  final List<Widget> tabs = [
    const Home(),
    const Original(),
    const Movies(),
    const Videos(vidoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',),
    const Music(),
  ];
  late final TabController _tabCont;
  @override
  void initState() {
    _tabCont = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  double myHeight = MediaQuery.of(context).size.height;
   double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
  
      body: NestedScrollView(
        headerSliverBuilder: (_, __) {
          return [
            SliverAppBar(
            expandedHeight: myHeight*0.04,
              backgroundColor: Colors.black,
              pinned: true,
              floating: false,
              leading: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              title: const Text(
                "GEMPLEX",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              actions: const [
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(right:8.0),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ],
       
              bottom: TabBar(
               labelColor: Colors.blue,
               unselectedLabelColor: Colors.white,
               indicator: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.blue,
                    width: 3.0,
                  ),
                ),
              ),
                controller: _tabCont,
                labelStyle: const TextStyle( fontFamily: "Poppins",fontSize: 12),
                isScrollable: true,
                tabs: const [
                  Tab(
                    text: "Home",
                  ),
                  Tab(
                    text: "Original",
                    
                  ),
                  Tab(
                    text: "Movies",
                  ),
                  Tab(
                    text: "Videos",
                  ),
                  Tab(
                    text: "Music",
                  )
                ],
              ),
            ),
          ];
        },
        body: TabBarView(controller: _tabCont, children: tabs),
      ),
    );
  }
}

