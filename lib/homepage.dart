import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page ";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[300],

      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/img.png'),
                fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.4)
                    ]
                  )
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Best Hotels Ever',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(height: 30,),
                  Container(margin: EdgeInsets.symmetric(horizontal: 40),
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,color: Colors.grey,),
                        hintText: 'Search for hotels...',
                        hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),
                  ),
                    SizedBox(height: 30,),


                  ],
                ),
              ),
            ),

            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Business Hotels ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(height: 20,),

                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: 'assets/images/img_1.png',title: 'Hotel 1'),
                        makeItem(image: 'assets/images/img_4.png',title: 'Hotel 2'),
                        makeItem(image: 'assets/images/img_3.png',title: 'Hotel 3'),

                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Airport Hotels ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: 'assets/images/img_2.png',title: 'Hotel 1'),
                        makeItem(image: 'assets/images/img_3.png',title: 'Hotel 2'),
                        makeItem(image: 'assets/images/img_3.png',title: 'Hotel 3'),

                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Resort Hotels  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: 'assets/images/img_1.png',title: 'Hotel 1'),
                        makeItem(image: 'assets/images/img_2.png',title: 'Hotel 2'),
                        makeItem(image: 'assets/images/img_3.png',title: 'Hotel 3'),

                      ],
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
  Widget makeItem({image,title}){
    return AspectRatio(aspectRatio: 3.8/4,
      child: Container(margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(image),

                fit: BoxFit.cover
            )
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0.2)
                  ]
              )
          ),
          child: Row(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(title,style: TextStyle(color: Colors.white,fontSize: 17),),
                ),

              ),
              SizedBox(width: 35,),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Icons.favorite,color: Colors.red,),
                ),
              )
            ],
          ),
        ),
      ),


    );
  }

}

