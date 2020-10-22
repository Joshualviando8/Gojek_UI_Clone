import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopPickList extends StatelessWidget {
  final List topPickList;
  final int topPickItem;
  final Function gestureDetectionFunction;
  const TopPickList({Key key, this.topPickList, this.topPickItem, this.gestureDetectionFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 14.0,
        right: 14.0,
        bottom: 16.0,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              for (var names in topPickList)
                GestureDetector(
                  onTap: () {
                    gestureDetectionFunction(topPickList.indexOf(names));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 700),
                      decoration: BoxDecoration(
                        color: topPickItem == topPickList.indexOf(names) ? Color(0xff31b059) : Color(0xffffffff),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xff707070),
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          right: 16.0,
                          top: 6.0,
                          bottom: 6.0,
                        ),
                        child: Center(
                          child: Text(
                            names,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.acme(
                              fontSize: 12,
                              color: topPickItem == topPickList.indexOf(names) ? Color(0xffe8f7f3) : Color(0xff8b8b8b),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
