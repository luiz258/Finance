import 'package:flutter/material.dart';

class FButton extends StatelessWidget {

  final String text;
  final String image;
  final Function callBack;
  final double width;
  final Color color;

  FButton({
    @required this.text,
    @required this.callBack,
    this.image,
    this.width,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      
      height: 68,
      width: width != null ? width : 400,
      child: FlatButton(
        color: color != null ? color : Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(32.0),
         
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            image != null
                ? Image.asset(
                    image,
                    width: 32,
                  )
                : SizedBox(),
            image != null
                ? SizedBox(
                    width: 10,
                  )
                : SizedBox(),
            Text(
              text,
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ],
        ),
        onPressed: callBack,
      ),
    );
  }
}