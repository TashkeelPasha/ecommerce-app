import 'package:ecom/details_screen.dart';

import '../provider/favourite_provider.dart';
import 'products.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  String splitTitle(String title) {
    List<String> words = title.split(' ');
    if (words.length > 1) {
      return words.join('\n');
    }
    return title;
  }

  @override
  Widget build(BuildContext context) {
    final provider =
        FavoriteProvider.of(context); // Ensure this is implemented correctly

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detail_screen(
              product: product,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: 180,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                Center(
                  child: Hero(
                    tag: product.image,
                    child: Image.asset(
                      product.image,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            product.review,
                            style: const TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      // const SizedBox(height: 10),

                      Text(
                        "\$${product.price}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(height: 10),
              ],
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Colors.purple, // Replace kprimaryColor
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    provider.toggleFavorite(product);
                  },
                  child: Icon(
                    provider.isExist(product)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    // Icons.favorite_border, // For now, use a static icon
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


// Row(
//                       children: List.generate(
//                         product.colors.length,
//                         (index) => Container(
//                           width: 18,
//                           height: 18,
//                           margin: const EdgeInsets.only(right: 4),
//                           decoration: BoxDecoration(
//                             color: product.colors[index],
//                             shape: BoxShape.circle,
//                           ),
//                         ),
//                       ),
//                     )