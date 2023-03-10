// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flight/models/product.dart';

import '../../../constants.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    Key? key,
    required this.itemIndex,
    required this.product,
    required this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function() press;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    // It  will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      // color: Colors.blueAccent,
      height: 160,
      child: InkWell(
        onTap: widget.press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            // Those are our background
            Container(
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: widget.itemIndex.isEven ? kBlueColor : kSecondaryColor,
                boxShadow: [kDefaultShadow],
              ),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            // our product image
            // Positioned(
            //   top: 0,
            //   right: 0,
            //   child: Hero(
            //     tag: '${widget.product.id}',
            //     child: Container(
            //       padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            //       height: 160,
            //       // image is square but we add extra 20 + 20 padding thats why width is 200
            //       width: 200,
            //       child: Image.asset(
            //         widget.product.image,
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //   ),
            // ),
            // Product title and price
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 160,
                // our image take 200 width, thats why we set out total width - 200
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        widget.product.tripType,
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    // it use the available space
                    const Spacer(),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding * 1, // 30 padding
                              vertical: kDefaultPadding, // 5 top and bottom
                            ),
                            child: Column(
                              children: [
                                Text(
                                  // ignore: unnecessary_string_escapes
                                  "${widget.product.fromcode}",
                                  style: Theme.of(context).textTheme.headlineSmall,
                                ),
                                Text(
                                  // ignore: unnecessary_string_escapes
                                  "${widget.product.from}",
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding * 1, // 30 padding
                              vertical: kDefaultPadding/1.5, // 5 top and bottom
                            ),
                            child: Column(
                              children: [
                                const Icon(Icons.flight_land_rounded),
                                Text(
                                  // ignore: unnecessary_string_escapes
                                  "${widget.product.duration}",
                                  style: Theme.of(context).textTheme.titleMedium,
                                  
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding * 1, // 30 padding
                              vertical: kDefaultPadding, // 5 top and bottom
                            ),
                            child: Column(
                              children: [
                                 Text(
                                  // ignore: unnecessary_string_escapes
                                  "${widget.product.tocode}",
                                  style: Theme.of(context).textTheme.headlineSmall,
                                ),
                                Text(
                                  // ignore: unnecessary_string_escapes
                                  "${widget.product.to}",
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
