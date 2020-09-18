import 'package:Finance/android/widget/button.widget.dart';
import 'package:Finance/android/widget/card.wideget.dart';
import 'package:flutter/material.dart';

class RecentTrasactionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              size: 32,
              color: Theme.of(context).primaryColorDark,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 26, top: 0, right: 20, bottom: 18),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'Recent Transactions',
                            style: Theme.of(context).textTheme.display2,
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text('See all',
                              style: Theme.of(context).textTheme.display1),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 6,
                        ),
                        Chip(
                          backgroundColor: Color(0xFF565D94),
                          shadowColor: Colors.black,
                          label: Text(
                            '   All   ',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Chip(
                          backgroundColor: Colors.white,
                          shadowColor: Colors.black,
                          autofocus: true,
                          label: Text(
                            'Income',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Chip(
                          backgroundColor: Colors.white,
                          shadowColor: Colors.black,
                          autofocus: true,
                          label: Text(
                            'Expense',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 8, top: 16, right: 20),
                      child: Text(
                        'Today',
                        style: Theme.of(context).textTheme.display2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 18, top: 18),
                      width: double.infinity,
                      height: 80,
                      padding: EdgeInsets.only(
                        left: 5,
                        top: 3,
                        right: 0,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.all(Radius.circular(28)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 12,
                            offset: Offset(0, 12), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 10,
                          top: 0,
                          right: 10,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              // decoration: BoxDecoration(
                              //   color: Color(0xFFE4E7F8),
                              //   borderRadius:
                              //       BorderRadius.all(Radius.circular(20)),
                              // ),
                              child: Icon(
                                Icons.mail_outline,
                                size: 40,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 18, left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sent',
                                    style: Theme.of(context).textTheme.title,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      top: 4,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Sending Payment to Clients',
                                          style: Theme.of(context)
                                              .textTheme
                                              .display3,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 40),
                                          child: Text(
                                            '\$40.00',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontSize: 18),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 380,
                //https://i.imgur.com/f1bsbrr.png
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.scaleDown,
                      image: new NetworkImage(
                          "https://i.imgur.com/f1bsbrr.png")),
                ),
              ),
              FButton(text: 'See Details', callBack: (){})
            ],
          ),
        ),
      ),
    );
  }
}
