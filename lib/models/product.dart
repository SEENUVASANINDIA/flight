class Product {
  final int id, price;
  final String 
      tripType,
      
      flightimage,
      from,
      to,
      duration,
      fromcode,
      departuretime,
      arrivaltime,
      airlineimage,
      airlinename,
      tocode;

  Product({
    required this.id,
    required this.price,
    required this.from,
    required this.to,
    
    required this.duration,
    required this.tripType,
    required this.fromcode,
    required this.tocode,
    required this.departuretime,
    required this.arrivaltime,
    required this.airlineimage,
    required this.flightimage,
    required this.airlinename,
  });
}

// list of products
// for our demo
List<Product> products = [
  Product(
    tripType: "Business Trip to New York",
    id: 1,
    price: 1200,
    from: "jakartha",
    fromcode: "MCL",
    tocode: "NYC",
    to: "new york",
    duration: "2h 55m",
    departuretime: "10:00 AM",
    arrivaltime: "12:00 PM",
    
    flightimage: "assets/images/saudia/flight.jpeg",
    airlinename: "Saudia Airline",
    airlineimage: "assets/images/saudia/airline_logo.png",
     ),
      Product(
    tripType: "Tour Trip to New York",
    id: 2,
    price: 12000,
    from: "chennai",
    fromcode: "MAA",
    tocode: "NYC",
    to: "new york",
    duration: "3h 55m",
    departuretime: "11:00 AM",
    arrivaltime: "3:00 PM",
    
    flightimage: "assets/images/airindia/flight.jpeg",
    airlinename: "Air India",
    airlineimage: "assets/images/airindia/airline_logo.png",
     ),
  
];
