import 'package:Finance/android/widget/button.widget.dart';
import 'package:flutter/material.dart';

import '../android-theme.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          //rossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 85,
            ),
            Container(
              width: double.infinity,
              //  padding: EdgeInsets.all(20),
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: new BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(
              height: 108,
            ),
            Center(
              child: Container(
                width: 380,
                height: 100,
                padding: EdgeInsets.only(
                  left: 20,
                  top: 22,
                  right: 20,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                // color: Theme.of(context).accentColor,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 14,
                      ),
                      width: double.infinity,
                      child: Text(
                        'Email Address',
                        style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontSize: 18),
                      ),
                    ),
                    TextField(
                      //obscureText: true,
                      style: TextStyle(
                          color: Theme.of(context).primaryColorDark,
                          fontSize: 18),
                      decoration: new InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 32,
            ),

            Center(
              child: Container(
                width: 380,
                height: 100,
                padding: EdgeInsets.only(
                  left: 20,
                  top: 22,
                  right: 20,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                // color: Theme.of(context).accentColor,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 14,
                      ),
                      width: double.infinity,
                      child: Text(
                        'Password',
                        style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontSize: 18),
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      style: TextStyle(
                          color: Theme.of(context).primaryColorDark,
                          fontSize: 18),
                      decoration: new InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye), onPressed: null),
                        border: InputBorder.none,
                        //Icons.remove_red_eye
                      ),
                    ),
                  ],
                ),
              ),
            ),
          
         SizedBox(
              height: 32,
            ),
            
           FButton(
             callBack: (){},
             text: 'Login',
             width: 380,
           ),        
          ],
        ),
      ),
    );
  }
}
