import 'package:Finance/android/android-theme.dart';
import 'package:Finance/android/widget/card.wideget.dart';
import 'package:Finance/store/overview.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import '../widget/card-profile.dart';

class OverViewView extends StatefulWidget {
  @override
  _OverViewViewState createState() => _OverViewViewState();
}

class _OverViewViewState extends State<OverViewView> {
  OverviewStore store;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    store = OverviewStore();
    store.listOverview();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            children: [
              CardProfile(),
              Container(
                width: 400,
                padding: EdgeInsets.only(
                  left: 2,
                  top: 30,
                  right: 2,
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Text(
                                    "OverView",
                                    style: androidTheme().textTheme.display2,
                                  ),
                                  Icon(
                                    Icons.notifications,
                                    color: Theme.of(context).primaryColor,
                                  )
                                ],
                              )),
                          Container(
                            padding: EdgeInsets.only(right: 15),
                            child: Text(
                              'Sept 13, 2020',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Observer(
                              builder: (_) => ListView.builder(
                                 scrollDirection: Axis.vertical,
    shrinkWrap: true,
                                itemCount: store.transaction.length,
                                itemBuilder: (ctx, i) {
                                  //print(store.transaction.length);
                                  return new  CardWidget(
                                    descri: store.transaction[i].descri,
                                    icon: store.transaction[i].icon,
                                    type: store.transaction[i].type,

                                    value: store.transaction[i].value,
                                  );
                                },
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
