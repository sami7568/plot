
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TicketsWidget extends StatefulWidget {
  const TicketsWidget({Key key}) : super(key: key);

  @override
  _TicketsWidgetState createState() => _TicketsWidgetState();
}

class _TicketsWidgetState extends State<TicketsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF040404),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: Image.asset(
                        "https://picsum.photos/seed/633/600",
                    ).image,),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 250, 100),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 30, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Forth of July',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  'Party',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 22,
                                  ),
                                ),
                                Text(
                                  'hosted by Mommy',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'insta - @mommy',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'waiting for ',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'approval',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff0570B7),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Icon(
                          Icons.chat_bubble,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Text(
                        'messages from host',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 180,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Color(0xff4336AA),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'guest list',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'view background Info',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'for each gurest',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                            ),
                            // Generated code for this Row Widget...
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width * 0.1,
                                        height: MediaQuery.of(context).size.width * 0.1,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://picsum.photos/seed/633/600',
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width * 0.1,
                                        height: MediaQuery.of(context).size.width * 0.1,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://picsum.photos/seed/633/600',
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(45, 0, 0, 0),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width * 0.1,
                                        height: MediaQuery.of(context).size.width * 0.1,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://picsum.photos/seed/633/600',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                  child: Text(
                                    '13 entrance',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Color(0xff4336AA),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.dollarSign,
                              color:
                              Colors.white,
                              size: 30,
                            ),
                            Text(
                              'Payment',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'detail',
                              style:TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Color(0xff4336AA),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            'This is a test party so that @hamsjon on instagram can test this. There is no Forth of July Party',
                            textAlign: TextAlign.center,
                            style:
                            TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
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
