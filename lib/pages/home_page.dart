import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            //#header
            Container(
              // color: Colors.red,
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_header.jpg"),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(.6),
                      Colors.black.withOpacity(.3),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Best Hotels Ever", style: TextStyle(color: Colors.white,fontSize: 32, fontWeight: FontWeight.bold),),
                    SizedBox(height: 40,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.grey,),
                          hintText: "Search for hotels ...",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18)
                        ),
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),

            //#body
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Business Hotels", style: TextStyle(fontSize: 22, color: Colors.grey[700],fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Container(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Item(img:"assets/images/ic_hotel1.jpg", title: "Hotel 1"),
                        Item(img:"assets/images/ic_hotel2.jpg", title: "Hotel 2"),
                        Item(img:"assets/images/ic_hotel3.jpg", title: "Hotel 3"),
                        Item(img:"assets/images/ic_hotel4.jpg", title: "Hotel 4"),
                        Item(img:"assets/images/ic_hotel5.jpg", title: "Hotel 5"),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("Airport Hotels", style: TextStyle(fontSize: 22, color: Colors.grey[700],fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Container(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Item(img:"assets/images/ic_hotel4.jpg", title: "Hotel 4"),
                        Item(img:"assets/images/ic_hotel1.jpg", title: "Hotel 1"),
                        Item(img:"assets/images/ic_hotel3.jpg", title: "Hotel 3"),
                        Item(img:"assets/images/ic_hotel2.jpg", title: "Hotel 2"),
                        Item(img:"assets/images/ic_hotel5.jpg", title: "Hotel 5"),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("Resort Hotels", style: TextStyle(fontSize: 22, color: Colors.grey[700],fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Container(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Item(img:"assets/images/ic_hotel1.jpg", title: "Hotel 1"),
                        Item(img:"assets/images/ic_hotel3.jpg", title: "Hotel 3"),
                        Item(img:"assets/images/ic_hotel4.jpg", title: "Hotel 4"),
                        Item(img:"assets/images/ic_hotel5.jpg", title: "Hotel 5"),
                        Item(img:"assets/images/ic_hotel2.jpg", title: "Hotel 2"),
                      ],
                    ),
                  ),

                ],
              ),
            )

          ],
        ),
      ),

    );
  }

  Widget Item({img, title}){
    return AspectRatio(
      aspectRatio: 1/1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.2)
              ]
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(title, style: TextStyle(color: Colors.white, fontSize: 22),),
              Icon(Icons.favorite, size: 24, color: Colors.red,)

            ],
          )

        ),
      ),
    );

  }
}
