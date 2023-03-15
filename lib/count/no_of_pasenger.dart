// ignore_for_file: prefer_const_constructors

import 'package:flight/count/seatbooking.dart';
import 'package:flight/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flight/components/constants.dart';

class Count extends StatelessWidget {
  const Count({super.key});
// final Product product;

//   const Count({ Key? key,required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String? travel_class;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Booking Your Flight'),
      ),
      backgroundColor: kPrimaryColor,
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              SizedBox(height: kDefaultPadding / 2),
              Expanded(
                  child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                    child: Image.asset('assets/images/world.jpeg',
                        fit: BoxFit.fill),
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 150),
                    margin: EdgeInsets.only(top: 140),

                    decoration: BoxDecoration(
                      color: kwhiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 160, horizontal: 13),
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width / 1.04,
                    decoration: BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Column(children: [
                      Text(
                        "Family vacation",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Row(
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
                                  "MCL",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                Text(
                                  // ignore: unnecessary_string_escapes
                                  "jakartha",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding * 1, // 30 padding
                              vertical:
                                  kDefaultPadding / 1.5, // 5 top and bottom
                            ),
                            child: Column(
                              children: [
                                const Icon(Icons.flight_land_rounded),
                                Text(
                                  // ignore: unnecessary_string_escapes
                                  "2h 55m",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
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
                                  "NYC",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                Text(
                                  // ignore: unnecessary_string_escapes
                                  "new york",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                 
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 310, 200, 350),
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width,
                    // color: kBackgroundColor,
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Departure",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "12:00 pm",
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(200, 310, 10, 350),
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width,
                    // color: kBackgroundColor,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Adults",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove),
                                iconSize: 36.0),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "1",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                                iconSize: 36.0),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 425, 200, 235),
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width,
                    // color: kBackgroundColor,
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Children",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove),
                                iconSize: 36.0),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "1",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                                iconSize: 36.0),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(200, 425, 10, 235),
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width,
                    // color: kBackgroundColor,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Infants",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove),
                                iconSize: 36.0),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "1",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                                iconSize: 36.0),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 540, 10, 140),
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width,
                    // color: kBackgroundColor,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Radio(
                              value: "economy",
                              groupValue: travel_class,
                              onChanged: (value) {}),
                          Text("economy"),
                          SizedBox(
                            width: 20,
                          ),
                          Radio(
                              value: "Business",
                              groupValue: travel_class,
                              onChanged: (value) {}),
                          Text("Business"),
                          SizedBox(
                            width: 20,
                          ),
                          Radio(
                              value: "First class",
                              groupValue: travel_class,
                              onChanged: (value) {}),
                          Text("First class"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(100, 650, 100, 50),
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width,
                      // color: kBackgroundColor,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const seatbook()));
                        },
                        child: Text("Procede"),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)))),
                      )),
                ],
              ))
            ],
          )),
    );
  }
}
