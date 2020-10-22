import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class GopayBar extends StatelessWidget {
  final int payLaterIndicator;
  final Function changeIndicatorGopay;

  const GopayBar({Key key, this.payLaterIndicator, this.changeIndicatorGopay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 14,
        right: 14,
        bottom: 16,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        decoration: BoxDecoration(
          color: const Color(0xff01aed6),
          border: Border.all(
            width: 1,
            color: const Color(0xffe8e8e8),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    width: 3,
                    height: 10,
                    decoration: BoxDecoration(
                      color: payLaterIndicator == 0 ? Color(0xfffff8f1) : Color(0xffc6b1b6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      width: 3,
                      height: 10,
                      decoration: BoxDecoration(
                        color: payLaterIndicator == 0 ? Color(0xffc6b1b6) : Color(0xfffff8f1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: 150,
                  //color: Colors.green,
                  child: ListWheelScrollView(
                    onSelectedItemChanged: (value) {
                      changeIndicatorGopay(value);
                    },
                    diameterRatio: 2.5,
                    itemExtent: 85,
                    children: <Widget>[
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xfff8fbff),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 14.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.wallet,
                                      color: Color(0xff01afd9),
                                      size: 14,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3.0),
                                      child: Text(
                                        'jopay',
                                        style: GoogleFonts.catamaran(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'Rp22.004',
                                style: GoogleFonts.catamaran(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'Tap to top up',
                                style: GoogleFonts.catamaran(
                                    fontWeight: FontWeight.bold, fontSize: 12, color: Color(0xff127c32)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xfff8fbff),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 14.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.googleWallet,
                                      color: Color(0xff01afd9),
                                      size: 14,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3.0),
                                      child: Text(
                                        'paylater',
                                        style: GoogleFonts.catamaran(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'Order now, pay by\nthe end of month',
                                style: GoogleFonts.catamaran(
                                    fontWeight: FontWeight.bold, fontSize: 12, color: Color(0xff127c32)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.arrowUp,
                              color: Color(0xfffafdfe),
                              size: 25,
                            ),
                            Text(
                              'Pay',
                              style: GoogleFonts.acme(
                                color: Color(0xffe8f7f3),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.plus,
                              color: Color(0xfffafdfe),
                              size: 25,
                            ),
                            Text(
                              'Top Up',
                              style: GoogleFonts.acme(
                                color: Color(0xffe8f7f3),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.list,
                              size: 25,
                              color: Color(0xfffafdfe),
                            ),
                            Text(
                              'More',
                              style: GoogleFonts.acme(
                                color: Color(0xffe8f7f3),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
