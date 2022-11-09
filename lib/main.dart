import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: startpage(),
    );
  }
}

class startpage extends StatelessWidget {
  const startpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomoptions = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.pin_drop, size: 30),
      Icon(Icons.calendar_month, size: 30),
      Icon(Icons.shopping_cart, size: 30),
      Icon(Icons.account_circle, size: 30),
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: homepage(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.white)
        ),
        child: CurvedNavigationBar(
          items: bottomoptions,
          height: 60,
          backgroundColor: Colors.transparent,
          color: Colors.orange,
        ),
      ),
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
          children: [Stack(
            children: [
              Image(
                image: AssetImage('images/Ellipse.png'),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('images/name.png'),
                        ),
                        Text(
                          "Slogan Here",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        labelText: 'Search Your Grooming Parter...',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(70)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 140,
                  child: ListView(
                    //padding: EdgeInsets.all(15),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.circle
                            ),
                            child: SizedBox(
                              width: 90,
                              height: 90,
                              child: Image(
                                image: AssetImage('images/name.png'),
                              ),
                            ),
                          ),
                          Text(
                            "Hair",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Recommended",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: ListView(
                    //padding: EdgeInsets.all(15),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              //color: Colors.orange,
                            ),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (builder)=>storepage()));
                              },
                              child: Container(
                                width: 200,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                                  color: Colors.redAccent,
                                ),child: Image(
                                image: AssetImage('images/name.png'),

                              ),
                              ),
                            ),
                          ),
                          Text(
                            "The Next Level",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "The Next Level",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Near By",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              //color: Colors.orange,
                            ),
                            child: Container(
                              width: 200,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                                color: Colors.redAccent,
                              ),
                              child: Image(
                                image: AssetImage('images/name.png'),

                              ),
                            ),
                          ),
                          Text(
                            "The Next Level",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "The Next Level",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
          ]),

    );
  }
}


class storepage extends StatefulWidget {
  storepage({Key? key}) : super(key: key);

  @override
  State<storepage> createState() => _storepageState();
}

class _storepageState extends State<storepage> with TickerProviderStateMixin{

  final bottomoptions = <Widget>[
    Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            //color: Colors.orange,
          ),
          child: Container(
            child: Image(
              image: AssetImage('images/name.png'),

            ),
          ),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            children: [Column(
              children: [
                CarouselSlider(
                    items: bottomoptions,
                    options: CarouselOptions(
                      height: 200,
                      aspectRatio: 16/9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 1000),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    )
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "The Next Level",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.favorite, size: 25, color: Colors.red,),
                          ),
                        ],
                      ),
                      SizedBox(height: 7,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Pulchowk, Lalitpur",
                          style: TextStyle(
                              fontSize: 17),
                        ),
                      ),
                      SizedBox(height: 7,),
                      Row(
                        children: [
                          Icon(Icons.timer, size: 20, color: Colors.orange,),
                          Text(" Open Now: 9:00 am-7:30 pm",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                        ],
                      ),
                      SizedBox(height: 7,),
                      Row(
                        children: [
                          Icon(Icons.near_me, size: 20, color: Colors.orange,),
                          Text(" Show on map",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        child: TabBar(
                          controller: tabController,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.orange,
                          indicatorWeight: 5,
                          indicatorPadding: EdgeInsets.fromLTRB(0,0,0,5),
                          tabs: [
                            Tab(text:"Services"),
                            Tab(text:"Reviews"),
                            Tab(text: "About us")
                          ],
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 500,
                        child: TabBarView(
                          controller: tabController,
                          children: [
                            services(),
                            //reviews,
                            //about,
                          ],
                        ),
                      )
                    ],
                  ),
                ),],
            ),
          ]),
        ),
      ),
    );
  }
}


class services extends StatefulWidget {
  const services({Key? key}) : super(key: key);

  @override
  State<services> createState() => _servicesState();
}

class _servicesState extends State<services> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
    return Container(
        child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                  children: [
                    GestureDetector(
                      onTap:()async{
                        setState(() => isSelected= !isSelected);
                      },
                      child: Row(
                        children: [
                          Container(
                            decoration:BoxDecoration(
                                color:isSelected? Colors.lightBlue:Colors.transparent,
                                borderRadius: BorderRadius.circular(15),
                                border:isSelected? null:Border.all(
                                  color: Colors.grey,
                                  width:2,
                                )
                            ),
                            width:30,
                            height: 30,
                            child: isSelected ?Icon(Icons.check) : null,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text("Men Haircut",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                Row(
                                  children: [
                                    Text("1hr",style: TextStyle(fontSize: 15),),
                                    SizedBox(width:10),
                                    Text("Mens only",style: TextStyle(fontSize: 15),),
                                  ]
                                )
                              ]
                            ),

                          )
                        ],
                      ),
                    )
                  ]
              )
            ]
        )
    );;
  }
}
