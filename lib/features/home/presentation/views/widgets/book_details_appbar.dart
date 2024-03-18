import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BooksDetailsAppBar extends StatelessWidget {
  const BooksDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.close)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),
      ],
    );
  }
}
