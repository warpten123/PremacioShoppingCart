import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../providers/shopping_cart_provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cart Items = ${context.watch<Cart>().count}"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _titleController,
                // ignore: unnecessary_const
                decoration: InputDecoration(hintText: 'Item Name'),
              ),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: ElevatedButton(
                    child: Text(
                      'Add Item',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      context.read<Cart>().addtoCart(_titleController.text);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
