import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/widgets/apps_drawer.dart';

import '../providers/orders.dart' as ord;
import '../widgets/order_item.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<ord.Orders>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Your orders'),
        ),
        drawer: AppDrawer(),
        body: ListView.builder(
          itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]),
        ));
  }
}
