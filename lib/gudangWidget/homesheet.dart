import 'package:flutter/material.dart';
import './gopaybar.dart';
import './searchbar.dart';
import './singlecard.dart';
import './slidercard.dart';
import './toppicklist.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSheet extends StatelessWidget {
  final ScrollController scrollController;
  final int payLaterIndicator;
  final int topPickItem;
  final Function changeIndicatorGopay;
  final Function setTopPickList;
  final List topPickList;

  const HomeSheet(
      {Key key,
      this.scrollController,
      this.payLaterIndicator,
      this.topPickItem,
      this.changeIndicatorGopay,
      this.setTopPickList,
      this.topPickList})
      : super(key: key);

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
                controller: scrollController,
                children: <Widget>[
                  SearchBar(),
                  GopayBar(
                    payLaterIndicator: payLaterIndicator,
                    changeIndicatorGopay: changeIndicatorGopay,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0, bottom: 10),
                    child: Text(
                      'Top picks for you',
                      style: GoogleFonts.catamaran(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  TopPickList(
                    gestureDetectionFunction: setTopPickList,
                    topPickItem: topPickItem,
                    topPickList: topPickList,
                  ),
                  SliderCard(),
                  SingleCard(),
                  SliderCard(),
                  SingleCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
