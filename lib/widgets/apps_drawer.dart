import 'package:flutter/material.dart';
import 'package:shopapp/screens/user_product_screen.dart';

import '../screens/orders_screen.dart';
import '../screens/user_product_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Hello Friend'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            title: Text('Shop'),
            leading: Icon(Icons.shop),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          Divider(),
          ListTile(
            title: Text('Order'),
            leading: Icon(Icons.payment),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(OrdersScreen.routeName);
          }),
          Divider(),
          ListTile(
            title: Text('Manage Products'),
            leading: Icon(Icons.payment),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(UserProductsScreen.routeName);
          }),
        ],
      ),
    );
  }
}
