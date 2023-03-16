// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:book_my_seat/book_my_seat.dart';
import 'package:flight/boardingpass/boardingscreen.dart';
import 'package:flight/components/constants.dart';

import 'package:flutter/material.dart';


import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class seatbook extends StatefulWidget {
  const seatbook({Key? key}) : super(key: key);

  @override
  State<seatbook> createState() => seatbookState();
}

class seatbookState extends State<seatbook> {
  Set<SeatNumber> selectedSeats = {};
   late Razorpay _razorpay;





@override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_UnQKmnOQzdN4OW',
      'amount': 280,
      'name': 'Seenuvasan',
      'description': 'Payment',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      // 'external': {
      //   'wallets': ['paytm']
      // }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e as String?);
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "SUCCESS: ${response.paymentId}", timeInSecForIosWeb: 4);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "ERROR: ${response.code} - ${response.message}",
        timeInSecForIosWeb: 4);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: ${response.walletName}", timeInSecForIosWeb: 4);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("select seat"),
        centerTitle: true,
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const SizedBox(
            //   height: 29,
            // ),
            
            // const SizedBox(
            //   height: 32,
            // ),
            Container(
              // margin: EdgeInsets.symmetric(vertical: 70, horizontal: 13),
              margin: EdgeInsets.fromLTRB(13, 30, 13, 0),
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
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text(
                            // ignore: unnecessary_string_escapes
                            "jakartha",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1, // 30 padding
                        vertical: kDefaultPadding / 1.5, // 5 top and bottom
                      ),
                      child: Column(
                        children: [
                          const Icon(Icons.flight_land_rounded),
                          Text(
                            // ignore: unnecessary_string_escapes
                            "2h 55m",
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
                            "NYC",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text(
                            // ignore: unnecessary_string_escapes
                            "new york",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            Text("Front of flight is this side",style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(
              height: 30,
            ),

            Flexible(
              child: SingleChildScrollView(
                // scrollDirection: Axis.horizontal,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: double.maxFinite,
                  margin: EdgeInsets.fromLTRB(30, 0, 0,0),
                  child: SeatLayoutWidget(
                    onSeatStateChanged: (rowI, colI, seatState) {
                      if (seatState == SeatState.selected) {
                        selectedSeats.add(SeatNumber(rowI: rowI, colI: colI));
                      } else {
                        selectedSeats
                            .remove(SeatNumber(rowI: rowI, colI: colI));
                      }
                    },
                    stateModel: const SeatLayoutStateModel(
                      rows: 10,
                      cols: 12,
                      seatSvgSize: 25,
                      pathSelectedSeat: 'assets/icons/seat_selected.svg',
                      pathDisabledSeat: 'assets/icons/seat_disabled.svg',
                      pathSoldSeat: 'assets/icons/seat_sold.svg',
                      pathUnSelectedSeat: 'assets/icons/seat_unselected.svg',
                      currentSeatsState: [
                        [
                          SeatState.disabled,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.empty,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.sold,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                        ],
                        [
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.empty,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                        ],
                        [
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.empty,
                          SeatState.sold,
                          SeatState.sold,
                          SeatState.sold,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                        ],
                        [
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.empty,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                        ],
                        [
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.empty,
                          SeatState.unselected,
                          SeatState.sold,
                          SeatState.sold,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                        ],
                        [
                          SeatState.sold,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.empty,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                        ],
                        [
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.empty,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                        ],
                        [
                          SeatState.sold,
                          SeatState.sold,
                          SeatState.unselected,
                          SeatState.empty,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                        ],
                        [
                          SeatState.empty,
                          SeatState.empty,
                          SeatState.empty,
                          SeatState.empty,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.sold,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                        ],
                        [
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.sold,
                          SeatState.sold,
                          SeatState.sold,
                          SeatState.unselected,
                          SeatState.unselected,
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        color: Colors.grey.shade700,
                      ),
                      const SizedBox(width: 2),
                      const Text('Disabled')
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        color: Colors.lightBlueAccent,
                      ),
                      const SizedBox(width: 2),
                      const Text('Sold')
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff0FFF50))),
                      ),
                      const SizedBox(width: 2),
                      const Text('Available')
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        color: const Color(0xff0FFF50),
                      ),
                      const SizedBox(width: 2),
                      const Text('Selected by you')
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onLongPress: openCheckout,
              onPressed: 
              () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Boardingpass()));
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => const Color(0xFFfc4c4e)),
              ),
              child: const Text('proceed/Show my selected seat numbers'),
            ),
            const SizedBox(height: 12),
            Text(selectedSeats.join(" , "))
          ],
        ),
      ),
    );
  }
}

class SeatNumber {
  final int rowI;
  final int colI;

  const SeatNumber({required this.rowI, required this.colI});

  @override
  bool operator ==(Object other) {
    return rowI == (other as SeatNumber).rowI && colI == other.colI;
  }

  @override
  int get hashCode => rowI.hashCode;

  @override
  String toString() {
    return '[$rowI][$colI]';
  }
}
















// import 'package:flutter/material.dart';
// import 'package:flight/components/constants.dart';
// import 'package:book_my_seat/book_my_seat.dart';

// class seatbook extends StatefulWidget {
//   const seatbook({super.key});

//   @override
//   State<seatbook> createState() => _seatbookState();
// }

// class _seatbookState extends State<seatbook> {
//    Set<SeatNumber> selectedSeats = {};
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("select seat"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Container(
//               // margin: EdgeInsets.symmetric(vertical: 70, horizontal: 13),
//               margin: EdgeInsets.fromLTRB(13, 70, 13, 5),
//               height: MediaQuery.of(context).size.height / 6,
//               width: MediaQuery.of(context).size.width / 1.04,
//               decoration: BoxDecoration(
//                   color: kBackgroundColor,
//                   borderRadius: BorderRadius.all(Radius.circular(50))),
//               child: Column(children: [
//                 Text(
//                   "Family vacation",
//                   style: Theme.of(context).textTheme.headlineSmall,
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: kDefaultPadding * 1, // 30 padding
//                         vertical: kDefaultPadding, // 5 top and bottom
//                       ),
//                       child: Column(
//                         children: [
//                           Text(
//                             // ignore: unnecessary_string_escapes
//                             "MCL",
//                             style: Theme.of(context).textTheme.headlineSmall,
//                           ),
//                           Text(
//                             // ignore: unnecessary_string_escapes
//                             "jakartha",
//                             style: Theme.of(context).textTheme.titleMedium,
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: kDefaultPadding * 1, // 30 padding
//                         vertical: kDefaultPadding / 1.5, // 5 top and bottom
//                       ),
//                       child: Column(
//                         children: [
//                           const Icon(Icons.flight_land_rounded),
//                           Text(
//                             // ignore: unnecessary_string_escapes
//                             "2h 55m",
//                             style: Theme.of(context).textTheme.titleMedium,
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: kDefaultPadding * 1, // 30 padding
//                         vertical: kDefaultPadding, // 5 top and bottom
//                       ),
//                       child: Column(
//                         children: [
//                           Text(
//                             // ignore: unnecessary_string_escapes
//                             "NYC",
//                             style: Theme.of(context).textTheme.headlineSmall,
//                           ),
//                           Text(
//                             // ignore: unnecessary_string_escapes
//                             "new york",
//                             style: Theme.of(context).textTheme.titleMedium,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ]),
//             ),
//             Container(
//               //  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//               margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
//               height: MediaQuery.of(context).size.height / 1.57,
//               width: MediaQuery.of(context).size.width / 1.04,
//               decoration: BoxDecoration(
//                   color: kBackgroundColor,
//                   borderRadius: BorderRadius.all(Radius.circular(50))),
//                   child: SingleChildScrollView(
//                     child: SeatLayoutWidget( onSeatStateChanged: (rowI, colI, seatState) {
//                     ScaffoldMessenger.of(context).hideCurrentSnackBar();
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                         content: seatState == SeatState.selected
//                             ? Text("Selected Seat[$rowI][$colI]")
//                             : Text("De-selected Seat[$rowI][$colI]"),
//                       ),
//                     );
//                     if (seatState == SeatState.selected) {
//                       selectedSeats.add(SeatNumber(rowI: rowI, colI: colI));
//                     } else {
//                       selectedSeats.remove(SeatNumber(rowI: rowI, colI: colI));
//                     }
//                   },stateModel: const SeatLayoutStateModel(
//                     pathDisabledSeat: 'assets/svg_disabled_bus_seat.svg',
//                     pathSelectedSeat: 'assets/svg_selected_bus_seats.svg',
//                     pathSoldSeat: 'assets/svg_sold_bus_seat.svg',
//                     pathUnSelectedSeat: 'assets/svg_unselected_bus_seat.svg',
//                     rows: 2,
//                     cols: 3,
//                     seatSvgSize: 10,currentSeatsState: []),),
//                   ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SeatNumber {
//   final int rowI;
//   final int colI;

//   const SeatNumber({required this.rowI, required this.colI});

//   @override
//   bool operator ==(Object other) {
//     return rowI == (other as SeatNumber).rowI && colI == (other as SeatNumber).colI;
//   }

//   @override
//   int get hashCode => rowI.hashCode;

//   @override
//   String toString() {
//     return '[$rowI][$colI]';
//   }
// }