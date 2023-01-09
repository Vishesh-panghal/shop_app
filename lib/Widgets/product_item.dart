import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/product.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: GridTileBar(
          backgroundColor: Colors.black45,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
            color: Theme.of(context).colorScheme.secondary,
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
              onPressed: () {},
              color: Theme.of(context).colorScheme.secondary,
              icon: Icon(Icons.shopping_cart)),
        ),
      ),
    );
  }
}
