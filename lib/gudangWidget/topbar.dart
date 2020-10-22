import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  final PageController sheetcontroller;
  final Function setBarPosition;
  final int itemNumber;
  final List listTitleTopBar;
  const TopBar({Key key, this.setBarPosition, this.itemNumber, this.listTitleTopBar, this.sheetcontroller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          for (var title in listTitleTopBar)
            GestureDetector(
              onTap: () {
                print(listTitleTopBar.indexOf(title));
                if (listTitleTopBar.indexOf(title) == 0) {
                  setBarPosition(0.045, 0, sheetcontroller);
                } else if (listTitleTopBar.indexOf(title) == 1) {
                  setBarPosition(0.375, 1, sheetcontroller);
                } else {
                  setBarPosition(0.705, 2, sheetcontroller);
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .25,
                height: 35,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        listTitleTopBar.indexOf(title) == 0
                            ? FontAwesomeIcons.percentage
                            : listTitleTopBar.indexOf(title) == 1 ? FontAwesomeIcons.home : FontAwesomeIcons.comments,
                        size: 20,
                        color: itemNumber == listTitleTopBar.indexOf(title)
                            ? Color(0xfffcfeff)
                            : Color(0xfffcfeff).withOpacity(0.4),
                      ),
                    ),
                    Container(
                      child: Text(
                        title,
                        style: GoogleFonts.catamaran(
                          color: itemNumber == listTitleTopBar.indexOf(title)
                              ? Color(0xfffcfeff)
                              : Color(0xfffcfeff).withOpacity(0.4),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
