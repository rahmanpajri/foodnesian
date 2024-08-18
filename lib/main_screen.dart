import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/model/food_menu.dart';

import 'detail_food.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Welcome to Foodnesian',
                        style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Silahkan melakukan pemesanan',
                        style: TextStyle(
                            fontSize: 16.0
                        ),
                      ),
                    ],
                  )
                ],
              )
          ),
          Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
                ),
                itemCount: foodMenuList.length,
                itemBuilder: (context, index) {
                    final FoodMenu menu = foodMenuList[index];
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return DetailFood(menu: menu);
                        }));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      menu.imageAsset,
                                      fit: BoxFit.cover,
                                    )
                                ),
                              ),
                              Text(
                                menu.name,
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(menu.price)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
              ),
          ),
        ]
      )
    );
  }
}