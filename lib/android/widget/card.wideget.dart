import 'package:Finance/android/views/recent-transactions.view.dart';
import 'package:flutter/material.dart';





  
class CardWidget extends StatelessWidget {
  final String icon;
  final String type;
  final String value;
  final String descri;

CardWidget({
  this.value, this.type, this.icon,this.descri
});

  @override
  Widget build(BuildContext context) {

    
    return Container(
     
      child: FlatButton(
        
        onPressed: (){
          
         Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecentTrasactionsView()),
                  );
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 18),
          width: 380,
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
                child: icon == "3" ?
                  Container(child: icon =="3" ? Icon(
                  Icons.monetization_on ,
                  size: 40,
                  color: Theme.of(context).primaryColorDark,
                ):Icon(
                  Icons.arrow_downward ,
                  size: 40,
                  color: Theme.of(context).primaryColorDark,
                ),
              ): Container(child: icon =="1" ? Icon(
                  Icons.arrow_upward ,
                  size: 40,
                  color: Theme.of(context).primaryColorDark,
                ):Icon(
                  Icons.arrow_downward ,
                  size: 40,
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
              ),
              Container(
                padding: EdgeInsets.only(top: 18, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      type,
                      style: Theme.of(context).textTheme.title,
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 4),
                        child: Row(
                          children: [
                            Text(
                              descri.toString(),
                              style: Theme.of(context).textTheme.display3,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                value,
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
      ),
    );
  }
}