import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * .75,
            decoration: BoxDecoration(
              color: const Color(0xfffbfbfb),
              border: Border.all(
                width: 1,
                color: const Color(0xffe8e8e8),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.search,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Would you like something to eat?',
                      style: GoogleFonts.catamaran(color: Color(0xff828282)),
                    ),
                  )
                ],
              ),
            ),
          ),
          CircleAvatar(
            foregroundColor: const Color(0xff038606),
            child: Icon(FontAwesomeIcons.userCircle),
            radius: 25,
          )
        ],
      ),
    );
  }
}
