import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PromoSheet extends StatelessWidget {
  final ScrollController scrollControllerPromos;
  final List listPicture;

  const PromoSheet({Key key, this.scrollControllerPromos, this.listPicture}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.88,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                width: 40,
                height: 5,
                decoration: BoxDecoration(
                  color: Color(0xffbcbcbc),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .85,
              child: ListView(
                controller: scrollControllerPromos,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0, bottom: 20, right: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: (MediaQuery.of(context).size.width - 28) / 3.1,
                          height: MediaQuery.of(context).size.height * .12,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment(0, 0.5),
                              end: Alignment(1, 0.5),
                              colors: [Color(0xfff78127), Color(0xfff3d2b8)],
                            ),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xff707070),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "14",
                                  style: GoogleFonts.catamaran(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Vouchers",
                                  style: GoogleFonts.catamaran(
                                      fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
                                ),
                                Text(
                                  "2 Expiring Soon",
                                  style: GoogleFonts.catamaran(
                                      fontSize: 10, fontWeight: FontWeight.w300, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.width - 28) / 3.1,
                          height: MediaQuery.of(context).size.height * .12,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment(0, 0.57),
                              end: Alignment(1, 0.59),
                              colors: [Color(0xff10b4d9), Color(0xffa9d3dc)],
                            ),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xff707070),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "0",
                                  style: GoogleFonts.catamaran(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Subscriptions",
                                  style: GoogleFonts.catamaran(
                                      fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
                                ),
                                Text(
                                  "Active now",
                                  style: GoogleFonts.catamaran(
                                      fontSize: 10, fontWeight: FontWeight.w300, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.width - 28) / 3.1,
                          height: MediaQuery.of(context).size.height * .12,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment(0, 0.5),
                              end: Alignment(1, 0.5),
                              colors: [Color(0xff993d93), Color(0xffdbadd8)],
                            ),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xff707070),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "0",
                                  style: GoogleFonts.catamaran(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Missions",
                                  style: GoogleFonts.catamaran(
                                      fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
                                ),
                                Text(
                                  "In Progress",
                                  style: GoogleFonts.catamaran(
                                      fontSize: 10, fontWeight: FontWeight.w300, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 14,
                      bottom: 20.0,
                      right: 14,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: const Color(0xff707070),
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      width: MediaQuery.of(context).size.width - 28,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: const Color(0xfff3b41a),
                                  radius: 14,
                                  child: Icon(
                                    FontAwesomeIcons.percentage,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Got a promo code? Enter here",
                                    style: GoogleFonts.catamaran(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Icon(FontAwesomeIcons.arrowRight),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0, bottom: 16),
                    child: Text(
                      'Promos you can\'t resist',
                      style: GoogleFonts.catamaran(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  for (var picture in listPicture)
                    Card(
                      color: Colors.transparent,
                      elevation: 10,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * .30,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              child: Image.asset(
                                picture,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0, top: 10, bottom: 10),
                            child: Container(
                              height: (MediaQuery.of(context).size.height * .30) - 32,
                              width: MediaQuery.of(context).size.width * .70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(right: 4.0),
                                        child: Icon(
                                          FontAwesomeIcons.car,
                                          size: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'jojek',
                                        style: GoogleFonts.catamaran(
                                            fontWeight: FontWeight.w700, fontSize: 16, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Paket 24 voucher JoFood + akses nonton JoPlay 1 bulan",
                                    style: GoogleFonts.catamaran(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
