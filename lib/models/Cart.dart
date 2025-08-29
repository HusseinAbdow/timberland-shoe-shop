import 'package:flutter/material.dart';
import 'package:timberland_app/models/Shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes
  List<Shoe> shoes = [
    Shoe(
      name: "Timberland Brown",
      description:
          "Waterproof 6-inch leather boot with rugged sole. Warm, durable, and stylish",
      imagePath: "lib/assets/images/timber4.png",
      price: "\$  323",
    ),

    Shoe(
      name: "Timberland Light-Brown",
      description:
          "Waterproof 6-inch leather boot with rugged sole. Warm, durable, and stylish",
      imagePath: "lib/assets/images/timber1.png",
      price: "\$  378",
    ),

    Shoe(
      name: "Timberland Pink",
      description:
          "Bold pink waterproof boot with soft leather and rugged sole. Confident, comfy, and stylish.",
      imagePath: "lib/assets/images/timber5.png",
      price: "\$  528",
    ),

    Shoe(
      name: "Timberland Cream",
      description:
          "Classic cream boot with smooth leather and durable sole. Light, timeless, and ready for anything.",
      imagePath: "lib/assets/images/timber3.png",
      price: "\$  223",
    ),

    Shoe(
      name: "Timber White",
      description:
          "Crisp white boot with waterproof leather and cushioned support. Fresh, strong, and stylish.",
      imagePath: "lib/assets/images/timber6.png",
      price: "\$  453",
    ),

    Shoe(
      name: "Timberland black",
      description:
          "Sleek black leather boot with waterproof design and tough rubber sole. Built to last, built for style.",
      imagePath: "lib/assets/images/timber2.png",
      price: "\$  323",
    ),
  ];
  //list of shoes in cart
  List<Shoe> userCart = [];

  //list of shoes for sale

  List<Shoe> getShoeList() {
    return shoes;
  }

  //get list of shoes in user cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add shoe to cart
  void addShoeToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //delete shoe from cart
  void removeShoeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
