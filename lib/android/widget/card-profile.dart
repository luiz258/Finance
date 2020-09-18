import 'package:flutter/material.dart';

import '../android-theme.dart';

class CardProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 350,
      padding: EdgeInsets.only(
        left: 10,
        top: 5,
        right: 10,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.all(Radius.circular(28)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 4,
            blurRadius: 18,
            offset: Offset(-1, 12), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: IconButton(
                    icon: Icon(Icons.short_text),
                    onPressed: () {},
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Container(
              width: 110.0,
              height: 110.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage("https://i.imgur.com/N3t1Cpg.png")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                  child: Text(
                'Hira Riaz',
                style: androidTheme().textTheme.display2,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                  child: Text(
                'Ux/UI Designer',
                style: androidTheme().textTheme.display3,
              )),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            '\$9000',
                            style: androidTheme().textTheme.display4,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Income',
                            style: androidTheme().textTheme.display3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 60,
                    color: Colors.grey,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            '\$2500',
                            style: androidTheme().textTheme.display4,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Expenses',
                            style: androidTheme().textTheme.display3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 60,
                    color: Colors.grey,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            '	\$900',
                            style: androidTheme().textTheme.display4,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Loan',
                            style: androidTheme().textTheme.display3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
