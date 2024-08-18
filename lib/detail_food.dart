import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/model/food_menu.dart';

class DetailFood extends StatelessWidget{
  final FoodMenu menu;
  const DetailFood({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.asset(menu.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.deepOrangeAccent,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.all(12.0),
              child: Text(
                menu.name,
                style: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(12.0),
              child: Text(
                menu.description,
                style: const TextStyle(
                    fontSize: 16.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              child: Cart(),
            ),
          ],
        ),
      ),
    );
  }
}

class Cart extends StatefulWidget{
  const Cart({super.key});

  @override
  State<StatefulWidget> createState() => _Cart();

}

class _Cart extends State<Cart>{
  bool isAdd = false;

  void addCart(){
    setState(() {
      isAdd = !isAdd;
    });
    _showAddCartDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: addCart,
        child: Text("add")
    );
  }

  void _showAddCartDialog(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Menu Berhasil Ditambahkan'),
          content: Text('Menu telah berhasil ditambahkan ke keranjang.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}