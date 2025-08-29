import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timberland_app/models/Cart.dart';
import 'package:timberland_app/models/Shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void deleteShoe() {
    Provider.of<Cart>(context, listen: false).removeShoeFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          onPressed: deleteShoe,
          icon: Icon(Icons.delete, color: Colors.red),
        ),
      ),
    );
  }
}
