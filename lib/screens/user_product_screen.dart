import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/product_provider.dart';
import 'package:shopapp/screens/edit_product_screen.dart';
import 'package:shopapp/widgets/user_product_item.dart';
import '../widgets/apps_drawer.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = '/user-products';
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Products'),
        actions: [
          IconButton(
              onPressed: () {
                //navigate to new product screen
                Navigator.of(context).pushNamed(EditProductScreen.routeName);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemBuilder: (_, i) => Column(children: [
            UserProductItem(productsData.items[i].id,
                productsData.items[i].title, productsData.items[i].imageUrl),
            Divider()
          ]),
          itemCount: productsData.items.length,
        ),
      ),
    );
  }
}
