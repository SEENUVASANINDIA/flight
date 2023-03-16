// ignore_for_file: unused_import, unnecessary_string_escapes, prefer_const_constructors, sort_child_properties_last, unnecessary_string_interpolations, deprecated_member_use

import 'package:flight/count_trans/no_of_pasenger.dart';
import 'package:flutter/material.dart';
import 'package:flight/components/constants.dart';
import 'package:flight/models/product.dart';

import 'product_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    // it provide us total height and width
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small devices
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: const BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Hero(
                      tag: '${product.id}',
                      child: ProductPoster(
                        size: size,
                        image: product.flightimage,
                      ),
                    ),
                  ),
                  // const ListOfColors(),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      product.airlinename,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    '\Rs${product.price}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor,
                    ),
                  ),
                  Row(
                    children: [
                      // SizedBox(width: 20,),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding / 2),
                          child: Icon(Icons.history)),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding / 2),
                        child: Text(
                          "${product.departuretime} ---",
                          style: const TextStyle(color: kTextLightColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding / 2),
                        child: Text(
                          product.arrivaltime,
                          style: const TextStyle(color: kTextLightColor),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    decoration: const BoxDecoration(
                      color: ksmoothColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // SizedBox(width: 20,),

                            SizedBox(
                              width: 60,
                            ),

                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: kDefaultPadding / 2),
                                child: Column(
                                  children: [
                                    Text(
                                      "${product.fromcode}",
                                      style: const TextStyle(
                                          color: kTextLightColor),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "${product.from}",
                                      style: const TextStyle(
                                          color: kTextLightColor),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              width: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: kDefaultPadding / 2),
                              child: const Icon(Icons.flight_land_rounded),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: kDefaultPadding / 2),
                                child: Column(
                                  children: [
                                    Text(
                                      "${product.tocode}",
                                      style: const TextStyle(
                                          color: kTextLightColor),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "${product.to}",
                                      style: const TextStyle(
                                          color: kTextLightColor),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Count(
 

                                    )));
                          },
                          child: Text('Procceed'),
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Colors.deepPurple.shade500)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: kDefaultPadding),
                ],
              ),
            ),

            // const ChatAndAddToCart(),
          ],
        ),
      ),
    );
  }
}
