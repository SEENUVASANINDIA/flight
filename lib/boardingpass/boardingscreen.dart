// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps, sort_child_properties_last



import 'package:flight/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class Boardingpass extends StatefulWidget {
  const Boardingpass({super.key});

  @override
  State<Boardingpass> createState() => _BoardingpassState();
}

class _BoardingpassState extends State<Boardingpass> {
  @override
  Widget build(BuildContext context) {
    var demo = "devo";
    var codeval = "app ${demo}";

    return Scaffold(
        appBar: AppBar(
          title: Text('data'),
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
                      margin:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                      child: Image.asset('assets/images/world.jpeg',
                          fit: BoxFit.fill),
                    ),
                    Container(
                      // margin: EdgeInsets.only(top: 150),
                      margin: EdgeInsets.only(top: 140),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: kwhiteColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Image.asset("assets/images/airindia/flight.jpeg"),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "American Airlines",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            Divider(
                              height: 2,
                              thickness: 5.0,
                              color: Colors.black54,
                            ),
                            Container(
                              // margin: EdgeInsets.symmetric(
                              //     vertical: 50, horizontal: 13),
                              margin: EdgeInsets.fromLTRB(13, 40, 13, 10),
                              height: MediaQuery.of(context).size.height / 7.5,
                              width: MediaQuery.of(context).size.width / 1.04,
                              decoration: BoxDecoration(
                                  color: kBackgroundColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          kDefaultPadding * 1, // 30 padding
                                      vertical:
                                          kDefaultPadding, // 5 top and bottom
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          // ignore: unnecessary_string_escapes
                                          "MCL",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall,
                                        ),
                                        Text(
                                          // ignore: unnecessary_string_escapes
                                          "jakartha",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          kDefaultPadding * 1, // 30 padding
                                      vertical: kDefaultPadding /
                                          1.5, // 5 top and bottom
                                    ),
                                    child: Column(
                                      children: [
                                        const Icon(Icons.flight_land_rounded),
                                        Text(
                                          // ignore: unnecessary_string_escapes
                                          "2h 55m",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          kDefaultPadding * 1, // 30 padding
                                      vertical:
                                          kDefaultPadding, // 5 top and bottom
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          // ignore: unnecessary_string_escapes
                                          "NYC",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall,
                                        ),
                                        Text(
                                          // ignore: unnecessary_string_escapes
                                          "new york",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 20),
                                  height:
                                      MediaQuery.of(context).size.height / 7,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration: BoxDecoration(
                                      color: kBackgroundColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Column(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(Icons.calendar_month),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Time"),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("10 am - 12 pm"),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 20),
                                  height:
                                      MediaQuery.of(context).size.height / 7,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration: BoxDecoration(
                                      color: kBackgroundColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Column(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(Icons.history_rounded),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Date"),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("16 march 2023"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 50),
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: kBackgroundColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40))),
                              child: Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  SizedBox(
                                    width: 70,
                                    height: 50,
                                  ),
                                  Column(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      SizedBox(
                                        width: 20,
                                        height: 50,
                                      ),
                                      Text("gate"),
                                      Text("C2")
                                    ],
                                  ),
                                  SizedBox(
                                    width: 30,
                                    height: 50,
                                  ),
                                  Column(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      SizedBox(
                                        width: 20,
                                        height: 50,
                                      ),
                                      Text("seat"),
                                      Text("A1")
                                    ],
                                  ),
                                  SizedBox(
                                    width: 30,
                                    height: 50,
                                  ),
                                  Column(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      SizedBox(
                                        width: 20,
                                        height: 50,
                                      ),
                                      Text("Flight no"),
                                      Text("ZCVD")
                                    ],
                                  ),
                                  SizedBox(
                                    width: 30,
                                    height: 50,
                                  ),
                                  Column(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      SizedBox(
                                        width: 20,
                                        height: 50,
                                      ),
                                      Text("Class"),
                                      Text("Business")
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
                              child: SfBarcodeGenerator(
                                  value: codeval,
                                  // showValue: true,
                                  symbology: Code128A()),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(100, 20, 100, 50),
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width,
                                // color: kBackgroundColor,
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Downlode"),
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30)))),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            )));
  }
}
