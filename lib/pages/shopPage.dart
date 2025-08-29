import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timberland_app/components/shoeTile.dart';
import 'package:timberland_app/models/Cart.dart';
import 'package:timberland_app/models/Shoe.dart';

class shopPage extends StatefulWidget {
  const shopPage({super.key});

  @override
  State<shopPage> createState() => _shopPageState();
}

class _shopPageState extends State<shopPage> {
  void addToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addShoeToCart(shoe);

    //notify user item was added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Item Successfully added!"),
        content: Text("check your cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          //search bar
          children: [
            Container(
              height: 60,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Search", style: TextStyle(fontSize: 16)),
                    Icon(Icons.search, size: 27),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "HOT PICKS 🔥",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                  ),
                  Text("see more", style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,

                itemCount: 5,
                itemBuilder: (context, index) {
                  Shoe shoe = value.getShoeList()[index];
                  return shoeTile(shoe: shoe, onTap: () => addToCart(shoe));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Divider(color: Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }
}
