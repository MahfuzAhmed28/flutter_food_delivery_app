import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/screens/home_screen.dart';
import 'package:flutter_food_delivery_app/screens/splash_screen.dart';

class FoodDeliveryApp extends StatefulWidget {
  const FoodDeliveryApp({super.key});

  @override
  State<FoodDeliveryApp> createState() => _FoodDeliveryAppState();
}

class _FoodDeliveryAppState extends State<FoodDeliveryApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: SplashScreen(),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings){
        late Widget route;
        if(settings.name==SplashScreen.name){
          route=SplashScreen();
        }
        else if(settings.name==HomeScreen.name){
          route=HomeScreen();
        }
        return MaterialPageRoute(builder: (_)=>route);
      },
    );
  }
}
