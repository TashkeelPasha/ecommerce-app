import 'package:ecom/models/products.dart';
import 'package:ecom/provider/cart_provider.dart';
import 'package:flutter/material.dart';

class Addtocart extends StatefulWidget {
  final Product product;
  const Addtocart({super.key, required this.product});

  @override
  State<Addtocart> createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(50),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 50),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Container(
                //     height: 40,
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20),
                //         border: Border.all(color: Colors.white, width: 2)),
                //     child: Row(
                //       children: [
                //         IconButton(
                //             icon: const Icon(
                //               Icons.remove,
                //               color: Colors.white,
                //             ),
                //             iconSize: 18,
                //             onPressed: () {
                //               if (currentIndex != 1) {
                //                 setState(() {
                //                   currentIndex--;
                //                 });
                //               }
                //             }),
                //         const SizedBox(
                //           width: 5,
                //         ),
                //         Text(
                //           currentIndex.toString(),
                //           style: const TextStyle(
                //               color: Colors.white, fontWeight: FontWeight.bold),
                //         ),
                //         const SizedBox(
                //           width: 5,
                //         ),
                //         IconButton(
                //             icon: const Icon(
                //               Icons.add,
                //               color: Colors.white,
                //             ),
                //             onPressed: () {
                //               setState(() {
                //                 currentIndex++;
                //               });
                //             }),
                //       ],
                //     )),
                GestureDetector(
                  onTap: () {
                    provider.add_to_fav(widget.product);
                    const snackBar = SnackBar(
                      backgroundColor: Colors.purple,
                      content: Text("Added Successfully!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white)),
                      duration: Duration(seconds: 1),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Container(
                      height: 55,
                      alignment: Alignment.center,
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      )),
                )
              ],
            )));
  }
}
