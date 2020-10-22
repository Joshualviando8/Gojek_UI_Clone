import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gojek_ui/gudangWidget/chatsheet.dart';
import 'package:gojek_ui/gudangWidget/homesheet.dart';
import 'package:gojek_ui/gudangWidget/promossheet.dart';
import 'package:google_fonts/google_fonts.dart';
import './gudangWidget/topbar.dart';

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  int topPickItem = 0;
  double barPosition = .375;
  int payLaterIndicator = 0;
  int appBarPickedItem = 1;
  bool upArrowFloating = false;
  ScrollController controllerNew;
  final sheetController = PageController(initialPage: 1, viewportFraction: 1.025, keepPage: true);
  var listItemTopBar = ['Promos', 'Home', 'Chat'];
  var topPickList = [
    'All',
    'COVID-19',
    'Donation',
    'Entertainment',
    'Food',
    'Lifestyle',
    'Payments',
    'Promos',
    'Shopping',
    'Transport',
    'Updates'
  ];

  var listName = [
    'bagus',
    'Mom2',
    'Alif',
    'Sandhika',
    'fillipi',
    'Rika',
    'Jenny',
  ];

  var listMessage = [
    'You have a new message',
    'Hallo Jo, sudah ditransfer ya pake JoPay',
    'Gaji udah dikirim gan',
    'JoClean yuk jos!',
    'Ini dana skripsi kemaren yaa',
    'Nanti aku kirim pake JoFood',
    'Jenny requested JoPay Rp10.000',
  ];

  var listPicture = [
    'assets/jpg/4.jpg',
    'assets/jpg/5.jpg',
    'assets/jpg/6.jpg',
    'assets/jpg/7.jpg',
  ];

  void changeIndicatorGopay(value) {
    setState(() {
      payLaterIndicator = value;
    });
  }

  void setBarPosition(double pos, int itemNumber, PageController sheetController) {
    setState(() {
      barPosition = pos;
      appBarPickedItem = itemNumber;
      sheetController.animateToPage(itemNumber, duration: Duration(milliseconds: 450), curve: Curves.easeOutSine);
    });
  }

  void setTopPickList(int itemNumber) {
    setState(() {
      topPickItem = itemNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xff27a101),
          child: SvgPicture.asset(
            'assets/svg/1.svg',
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
        ),
        PageView(
          onPageChanged: (value) {
            setBarPosition(value == 2 ? .705 : value == 1 ? .375 : 0.045, value, sheetController);
          },
          controller: sheetController,
          allowImplicitScrolling: true,
          children: <Widget>[
            Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: DraggableScrollableSheet(
                    initialChildSize: .88,
                    maxChildSize: .88,
                    minChildSize: .45,
                    builder: (context, scrollControllerPromos) {
                      return PromoSheet(
                        scrollControllerPromos: scrollControllerPromos,
                        listPicture: listPicture,
                      );
                    },
                  ),
                ),
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: DraggableScrollableSheet(
                    initialChildSize: .88,
                    maxChildSize: .88,
                    minChildSize: .45,
                    builder: (context, scrollController) {
                      controllerNew = scrollController;
                      scrollController.addListener(() {
                        if (upArrowFloating == false) {
                          if (scrollController.offset > 50) {
                            setState(() {
                              upArrowFloating = true;
                            });
                          }
                        } else {
                          if (scrollController.offset < 50) {
                            setState(() {
                              upArrowFloating = false;
                            });
                          }
                        }
                      });
                      return HomeSheet(
                        topPickList: topPickList,
                        topPickItem: topPickItem,
                        payLaterIndicator: payLaterIndicator,
                        scrollController: scrollController,
                        setTopPickList: setTopPickList,
                        changeIndicatorGopay: changeIndicatorGopay,
                      );
                    },
                  ),
                ),
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: DraggableScrollableSheet(
                    initialChildSize: .88,
                    maxChildSize: .88,
                    minChildSize: .45,
                    builder: (context, scrollControllerChat) {
                      return ChatSheet(
                        listMessage: listMessage,
                        listName: listName,
                        scrollControllerChat: scrollControllerChat,
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          left: MediaQuery.of(context).size.width * barPosition, //.0.047, .375, .710
          top: MediaQuery.of(context).padding.top + 15,
          child: Container(
            width: MediaQuery.of(context).size.width * .25,
            height: 35,
            decoration: BoxDecoration(
              color: Color(0xff00750d),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + 15,
          child: TopBar(
            setBarPosition: setBarPosition,
            itemNumber: appBarPickedItem,
            listTitleTopBar: listItemTopBar,
            sheetcontroller: sheetController,
          ),
        ),
        appBarPickedItem == 0
            ? Container()
            : appBarPickedItem == 1
                ? AnimatedPositioned(
                    duration: Duration(milliseconds: 450),
                    bottom: upArrowFloating == true ? 32 : -150,
                    right: 16,
                    child: GestureDetector(
                      onTap: () {
                        controllerNew.animateTo(0, duration: Duration(milliseconds: 450), curve: Curves.easeIn);
                      },
                      child: Container(
                        child: Icon(
                          FontAwesomeIcons.arrowCircleUp,
                          color: Color(0xff00b11e),
                          size: 40,
                        ),
                      ),
                    ),
                  )
                : Positioned(
                    bottom: 32,
                    right: 16,
                    child: CircleAvatar(
                      //foregroundColor: Color(0xff00b11e),
                      backgroundColor: const Color(0xff00870c),
                      child: Icon(
                        FontAwesomeIcons.plusCircle,
                        color: Colors.white,
                      ),
                    ),
                  ),
        appBarPickedItem != 1
            ? Container()
            : AnimatedPositioned(
                bottom: upArrowFloating == false ? 32 : -150,
                left: MediaQuery.of(context).size.width * 0.04,
                duration: Duration(milliseconds: 450),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: MediaQuery.of(context).size.height * 0.14,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                        child: Container(
                          width: 40,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  //foregroundColor: Color(0xff00b11e),
                                  backgroundColor: Color(0xff00b11e),
                                  child: Icon(
                                    FontAwesomeIcons.car,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    'JoCar',
                                    style: GoogleFonts.catamaran(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  //foregroundColor: Color(0xff00b11e),
                                  backgroundColor: const Color(0xfff32438),
                                  child: Icon(
                                    FontAwesomeIcons.utensilSpoon,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    'JoFood',
                                    style: GoogleFonts.catamaran(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  //foregroundColor: Color(0xff00b11e),
                                  backgroundColor: const Color(0xfff32438),
                                  child: Icon(
                                    FontAwesomeIcons.shoppingBag,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    'JoShop',
                                    style: GoogleFonts.catamaran(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  //foregroundColor: Color(0xff00b11e),
                                  backgroundColor: Color(0xff00b11e),
                                  child: Icon(
                                    FontAwesomeIcons.box,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    'JoSend',
                                    style: GoogleFonts.catamaran(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
      ],
    );
  }
}
