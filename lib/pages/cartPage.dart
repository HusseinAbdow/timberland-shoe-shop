import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timberland_app/components/cart_item.dart';
import 'package:timberland_app/models/Cart.dart';
import 'package:timberland_app/models/Shoe.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Cart",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),

              SizedBox(height: 10),

              Expanded(
                
                child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                    //get shoe from cart
                    Shoe indivitualShoe = value.getUserCart()[index];

                    //return shoe from the cart
                    return CartItem(shoe: indivitualShoe);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
