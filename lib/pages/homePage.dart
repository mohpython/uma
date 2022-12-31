import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uma/prebac/home.dart';
import 'package:uma/screens/signup_screen.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('University Of Mali (UMA)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
         // Image.asset('assets/images/log.png', width: 100, height: 100),
          Icon(Icons.account_circle)
        ],
      ),
      drawer: Drawer(),

      body: ListView(
        children: [
          Column(
            children: [
              Image.asset('assets/images/log.png', width: 100, height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Rechercher',
                    prefixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                  ),
                ),
              ),
              SizedBox(height: 15,),
              CarouselSlider(
                  items: [
                    Container(
                      child: Image.asset('assets/images/c.jpg', fit: BoxFit.fill,),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 8,
                            ),
                          ]
                      ),
                    ),
                    Container(
                      child: Image.asset('assets/images/b.jpg', fit: BoxFit.fill),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 8,
                            ),
                          ]
                      ),
                    ),
                    Container(
                      child: Image.asset('assets/images/slide1.jpg', fit: BoxFit.fill),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 8,
                          ),
                        ]
                      ),
                    ),
                    Container(
                      child: Image.asset('assets/images/slide3.jpg', fit: BoxFit.fill),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 8,
                            ),
                          ]
                      ),
                    ),

                  ], options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.5
              ),),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 5,
                  children: [
                    InkWell(
                      child: customGridView('assets/images/univer.jpg', 'Université'),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => homeBac()));
                      },
                    ),
                    InkWell(
                      child:  customGridView('assets/images/bokk.jpg', 'Pré-bac'),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => homeBac()));

                      },
                    ),

                    customGridView('assets/images/bourse.jpg', 'Bourse Etude'),

                    customGridView('assets/images/comm.jpg', 'Communauté'),
                    customGridView('assets/images/cup.jpg', 'Challanges'),
                    customGridView('assets/images/forum.png', 'Forum de Discussion'),
                    customGridView('assets/images/forum.png', 'Forum de Discussion'),
                    customGridView('assets/images/forum.png', 'Forum de Discussion'),
                    customGridView('assets/images/forum.png', 'Forum de Discussion'),



                  ],
                ),
              ),

            ],
          )
        ],
      ),

    );
  }
  Widget customGridView(image, text){
    return Container(
      padding: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 8,
            ),
          ]
      ),
      child: Column(
        children: [
          Image.asset('$image', width: 150, height: 150,),
          Text('$text',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
