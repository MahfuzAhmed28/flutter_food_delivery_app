import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String name='/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: Icon(null),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.shopping_basket,color: Colors.grey[800],)
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInRight(
                    child: Text('Food Delivery',style: TextStyle(
                      color: Colors.grey[80],
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FadeInRight(
                          delay: Duration(milliseconds: 100),
                          child: makeCategory(isActive: true,title: 'Pizza'),
                        ),
                        FadeInRight(
                          delay: Duration(milliseconds: 200),
                          child: makeCategory(isActive: false,title: 'Burger'),
                        ),
                        FadeInRight(
                          delay: Duration(milliseconds: 200),
                          child: makeCategory(isActive: false,title: 'Sandwich'),
                        ),
                        FadeInRight(
                          delay: Duration(milliseconds: 400),
                          child: makeCategory(isActive: false,title: 'Pizza'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            FadeInRight(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text('Free Delivery',style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    FadeInRight(
                      child: makeItem(image: 'assets/images/one.jpg'),
                    ),
                    FadeInRight(
                      child: makeItem(image: 'assets/images/two.jpg'),
                    ),
                    FadeInRight(
                      child: makeItem(image: 'assets/images/three.jpg'),
                    ),
                  ],
                )
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      )
    );
  }

  Widget makeCategory({isActive, title}){
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow[700]: Colors.white,
          borderRadius: BorderRadius.circular(50)
        ),
        child: Align(
          child: Text(title,style: TextStyle(
            color: isActive ? Colors.white :Colors.grey[500],
            fontSize: 18,
            fontWeight: isActive ?FontWeight.bold : FontWeight.w100
          ),),
        ),
      ),
    );
  }

  Widget makeItem({image}){
    return AspectRatio(
      aspectRatio: 1/1.5,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                stops: [.2,.9],
                colors: [
                  Colors.black87.withOpacity(0.9),
                  Colors.black87.withOpacity(0.3),
                ],
              )
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.favorite,color: Colors.white,),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('\$ 15.00',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),),
                      Text('Vegetarian Pizza',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
