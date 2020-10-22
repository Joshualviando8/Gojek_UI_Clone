import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ChatSheet extends StatelessWidget {
  final List listName;
  final List listMessage;
  final ScrollController scrollControllerChat;

  const ChatSheet({Key key, this.listName, this.listMessage, this.scrollControllerChat}) : super(key: key);
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
                controller: scrollControllerChat,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0, bottom: 16),
                    child: Text(
                      'Quick actions',
                      style: GoogleFonts.catamaran(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 14,
                      bottom: 20.0,
                      right: 14,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              //foregroundColor: Color(0xff00b11e),
                              backgroundColor: Color(0xffef6303),
                              child: Icon(
                                FontAwesomeIcons.mailBulk,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                'Inbox',
                                style: GoogleFonts.catamaran(
                                  fontSize: 14,
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
                              backgroundColor: const Color(0xff00aa12),
                              child: Icon(
                                FontAwesomeIcons.solidObjectGroup,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                'New group',
                                style: GoogleFonts.catamaran(
                                  fontSize: 14,
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
                              backgroundColor: const Color(0xff01aed6),
                              child: Icon(
                                FontAwesomeIcons.dotCircle,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                'Split bill',
                                style: GoogleFonts.catamaran(
                                  fontSize: 14,
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
                              backgroundColor: const Color(0xff01aed6),
                              child: Icon(
                                FontAwesomeIcons.solidArrowAltCircleUp,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                'Pay',
                                style: GoogleFonts.catamaran(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0, bottom: 16),
                    child: Text(
                      'Your chats',
                      style: GoogleFonts.catamaran(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  for (var name in listName)
                    ListTile(
                      leading: CircleAvatar(
                        child: Text(name[0].toUpperCase()),
                      ),
                      title: Text(name),
                      subtitle: Text(listMessage[listName.indexOf(name)]),
                      trailing: Text(
                        DateFormat.yMMMd().format(
                          DateTime.now(),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
