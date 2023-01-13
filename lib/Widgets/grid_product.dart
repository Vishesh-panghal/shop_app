import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'item_product.dart';
import '../providers/products.dart';

class ProductGrid extends StatelessWidget {
  final bool showOnlyFav;
  ProductGrid(this.showOnlyFav);
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products =
        showOnlyFav ? productData.favoritesItems : productData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: (products[index]),
        child: ProductItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
