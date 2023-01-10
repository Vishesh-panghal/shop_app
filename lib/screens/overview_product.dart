import 'package:flutter/material.dart';
import '../Widgets/grid_product.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Overview'),
      ),
      body: ProductGrid(),
    );
  }
}
