import 'package:flutter/material.dart';
import 'package:marwanecommerceapp/constants/network_images.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../models/products.dart';

class HomeListItems extends StatelessWidget {
  final Product product;
  const HomeListItems({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sh = MediaQuery.of(context).size.height;
    final sw = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          fit: StackFit.loose,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(
                product.imgUrl,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            product.discountValue != null
                ? Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SizedBox(
                      width: 50,
                      height: 25,
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                            color: Colors.redAccent,
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Center(
                          child: Text(
                            "-${product.discountValue.toString()}%",
                            style: const TextStyle(
                                fontSize: 12.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(),
            Positioned(
              top: 165,
              right: 20,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: IconButton(
                  icon: const Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: RatingBar(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            ratingWidget: RatingWidget(
              full: const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              empty: const Icon(
                Icons.star,
                color: Colors.grey,
              ),
              half: const Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ),
            itemSize: 15,
            onRatingUpdate: (rating) {},
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(product.category),
        ), // to be replaced by company name
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            product.title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
