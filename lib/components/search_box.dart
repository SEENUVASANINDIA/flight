import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import '../components/constants.dart';

class SearchBox extends StatelessWidget {
  // var hinttext;

  

  

  

   const SearchBox({
    Key? key,
    required this.onChanged,
    required this.hinttext,
  }) : super(key: key);

  final ValueChanged onChanged;
  final String hinttext;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.all(kDefaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4, // 5 top and bottom
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        onChanged: onChanged,
        style: const TextStyle(color: Colors.white),
        // ignore: prefer_const_constructors
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: const Icon(Icons.search),
          hintText: hinttext,
          hintStyle: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
