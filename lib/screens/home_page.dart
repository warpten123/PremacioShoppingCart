import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';

import '../providers/shopping_cart_provider.dart';
import 'second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping List"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: Provider.of<Cart>(context, listen: true).count,
            itemBuilder: ((context, index) {
              return Card(
                child: ListTile(
                  leading: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Consumer<Cart>(
                        builder: (context, Cart, child) {
                          return Text(
                            "${Cart.shoppingList[index][0].toUpperCase()}",
                            style: TextStyle(fontSize: 25.0),
                          );
                        },
                      ),
                    ),
                  ),
                  title: Text(
                    "${context.read<Cart>().shoppingList[index]}",
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              );
            })),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => SecondPage(),
              transition: Transition.upToDown, duration: Duration(seconds: 1));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
