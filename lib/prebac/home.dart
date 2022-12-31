import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeBac extends StatefulWidget {
  const homeBac({Key? key}) : super(key: key);

  @override
  State<homeBac> createState() => _homeBacState();
}

class _homeBacState extends State<homeBac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Column(
            ),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 5,
                  children: [
                    InkWell(
                      child: customGridView('assets/images/univer.jpg', 'Université'),
                      onTap: (){
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => InscriptionPage()));
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => artice2()));
                      },

                    ),

                    customGridView('assets/images/tseco.jpg', 'TSECO'),
                    customGridView('assets/images/tse.jpg', 'TSE'),
                    customGridView('assets/images/chimi.jpg', 'TSEXP'),
                    customGridView('assets/images/geo.jpg', 'TSS'),
                    customGridView('assets/images/bt.jpg', 'BT'),
                    customGridView('assets/images/forum.png', 'Forum de Discussion'),
                    customGridView('assets/images/forum.png', 'Forum de Discussion'),
                    customGridView('assets/images/forum.png', 'Forum de Discussion'),



                  ],
                ),
              ),

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
