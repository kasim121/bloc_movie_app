import 'package:flutter/material.dart';

import 'home_details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
   backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: myHeight * 0.08,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://wallpaperaccess.com/full/2440003.jpg'),
                  ),
                ),
              ),
            ),
            
            const SizedBox(
              height: 12,
            ),
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Premium Shorts",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        Text(
                          "See more",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: myHeight * .4,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: myWidth * 0.515,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap:(){
                             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  VideoPlayerscreen(vidoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',)),
            );

                                },
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    // side: const BorderSide(
                                    //     color: Color.fromARGB(97, 221, 210, 210),
                                    //     width: 1),
                                  ),
                                  elevation: 0,
                                  //margin: const EdgeInsets.all(10),
                                  child: Stack(
                                    children: [
                                      Image.network(
                                        'https://e1.pxfuel.com/desktop-wallpaper/49/663/desktop-wallpaper-new-movie-posters-hollywood-movie-2022.jpg',
                                        fit: BoxFit.fill,
                                        height: myHeight * 0.315,
                                        width: myWidth * 0.5,
                                      ),
                                      Positioned(
                                        top: 10,
                                        right: 6,
                                        child: Container(
                                            width: 35,
                                            height: 35,
                                            alignment:
                                                AlignmentDirectional.topCenter,
                                            child: MaterialButton(
                                              onPressed: () {},
                                              color: Colors.blue,
                                              padding: const EdgeInsets.all(7),
                                              shape: const CircleBorder(),
                                              child: const Center(
                                                child: ImageIcon(
                                                  AssetImage(
                                                      "assets/images/crown.png"),
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text("Rohessyo Chitra",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    )),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: myHeight * 0.08,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://wallpaperaccess.com/full/2440003.jpg'),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8, top: 10),
                    child: Text(
                      "Language",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: myHeight * 0.25,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.blue),
                                height:  myHeight *0.1,
                                width: myHeight *0.1,
                                child: const Center(
                                  child: Text(
                                    "En",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "English",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        );
                        ;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
