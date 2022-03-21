import 'package:flutter/material.dart';
import 'package:sliding_switch/sliding_switch.dart';

class HostPortal extends StatefulWidget {
  const HostPortal({Key key}) : super(key: key);

  @override
  _HostPortalState createState() => _HostPortalState();
}

class _HostPortalState extends State<HostPortal> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF240D39),
        automaticallyImplyLeading: false,

        title: Text(
          'Host Portal',
          /*style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),*/
        ),
        leading: Icon(Icons.arrow_back),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: Color(0xFF240D39),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 0, 80, 35),
                  child: SlidingSwitch(
                    value: false,
                    width: 192,
                    onChanged: (bool value) {
                      setState(() {
                       // isAdmin = value;
                        print(value);
                      //  print("Admin is $isAdmin");
                      });
                    },
                    height : 45,
                    animationDuration : const Duration(milliseconds: 400),
                    onTap:(){},
                    onDoubleTap:(){},
                    onSwipe:(){},
                    textOff : "Upcoming",
                    textOn : "Past",
                    colorOn : Colors.white,
                    colorOff : const Color(0xffFFFFFF),
                    background : const Color(0xffe4e5eb),
                    buttonColor : Colors.black,
                    inactiveColor : Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 25),
                  child: Container(
                    width: 100,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(25),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Midnight Madness',
                                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                                /*style: FlutterFlowTheme.of(context).bodyText1,*/
                              ),
                              Text(
                                '02/25/22',
                                style: TextStyle(color: Colors.black,fontSize: 18),

                                /*style: FlutterFlowTheme.of(context).bodyText1,*/
                              ),
                            ],
                          ),
                          SizedBox(height: 3,),
                          Text(
                            'Moves Code',
                            style: TextStyle(fontSize: 17,color: Colors.black),
                            /*style: FlutterFlowTheme.of(context).bodyText1,*/
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '29801J',
                                style: TextStyle(fontSize: 33,color: Colors.black,fontWeight: FontWeight.bold),
                                /*style: FlutterFlowTheme.of(context).bodyText1,*/
                              ),
                              Container(
                                width: 100,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xFF240D39),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'More',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 18,color: Colors.white),
/*                                style: FlutterFlowTheme.of(context).bodyText1.override(fontFamily: 'Poppins', color: FlutterFlowTheme.of(context).primaryBackground,),*/
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Generated code for this Container Widget...
                Container(
                  width: 100,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(90, 40, 90, 40),
                    child: Container(
                     /* width: 30,
                      height: 20,*/
                      decoration: BoxDecoration(
                        color: Color(0xFF240D39),
                        borderRadius: BorderRadius.circular(30),
                        shape: BoxShape.rectangle,
                      ),
                      child: Center(
                        child: Text(
                          'Create a Move',
                          textAlign: TextAlign.center,
                          /*style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            lineHeight: 4,
                          ),*/
                          style: TextStyle(fontSize: 20,color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
