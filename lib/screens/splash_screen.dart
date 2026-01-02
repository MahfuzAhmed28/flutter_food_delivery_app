import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String name='/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/starter-image.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black87.withOpacity(0.9),
                Colors.black87.withOpacity(0.8),
                Colors.black87.withOpacity(0.2),
              ],
            )
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FadeInRight(
                  delay: Duration(milliseconds: 1200),
                  duration: Duration(seconds: 2),
                  child: Text('Taking Order For Delivery',style: TextStyle(
                    color: Colors.white,
                    fontSize: 55,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(height: 20,),
                FadeInRight(
                  delay: Duration(milliseconds: 1300),
                  duration: Duration(seconds: 2),
                  child: Text('See restaurants by \nadding location',style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    height: 1.4
                  ),),
                ),
                SizedBox(height: 120,),
                FadeInRight(
                  delay: Duration(milliseconds: 1400),
                  duration: Duration(seconds: 2),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow,
                          Colors.orange
                        ],
                      )
                    ),
                    child: TextButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, HomeScreen.name);
                      },
                      child: Text('Start',style: TextStyle(
                        color: Colors.white
                      ),),
                    )
                  ),
                ),
                SizedBox(height: 30,),
                FadeInRight(
                  delay: Duration(milliseconds: 1200),
                  duration: Duration(seconds: 2),
                  child: Align(
                    child: Text('Now Deliver to Your Door 24/7',style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15
                    ),),
                  ),
                ),
                SizedBox(height: 30,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
