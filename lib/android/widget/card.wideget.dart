import 'package:Finance/android/views/recent-transactions.view.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      
      onPressed: (){
        
       Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecentTrasactionsView()),
                );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 18),
        width: double.infinity,
        height: 80,
        padding: EdgeInsets.only(
          left: 10,
          top: 3,
          right: 10,
        
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
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Color(0xFFE4E7F8),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Icon(
                Icons.arrow_upward,
                size: 40,
                color: Theme.of(context).primaryColorDark,
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
                      padding: EdgeInsets.only(top: 4),
                      child: Row(
                        children: [
                          Text(
                            'Sending Payment to Clients',
                            style: Theme.of(context).textTheme.display3,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              '\$400',
                              style: Theme.of(context).textTheme.title,
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
