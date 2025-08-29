import "package:flutter/material.dart";
import "package:timberland_app/models/Shoe.dart";

class shoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  shoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.8,

      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //image of shoe
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),

          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              shoe.description,

              style: TextStyle(
                color: const Color.fromARGB(255, 99, 98, 98),
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    //shoe name and price
                    Text(
                      shoe.name,

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color(0xFF633D1F),
                      ),
                    ),

                    Text(
                      '\$' + shoe.price,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: Color(0xFF633D1F),
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
