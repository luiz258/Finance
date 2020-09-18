import 'package:Finance/android/views/home.view.dart';
import 'package:Finance/android/views/over-view.view.dart';
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
              child: Center(
                child: Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.scaleDown,
                        image: new NetworkImage(
                            "https://i.imgur.com/aokFo6g.png")),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 90,
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
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 14,
                      offset: Offset(0, 12), // changes position of shadow
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
                        style: androidTheme().textTheme.display1,
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
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 14,
                      offset: Offset(0, 12), // changes position of shadow
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
                        style: androidTheme().textTheme.display1,
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
              callBack: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              text: 'Login',
              width: 380,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Signup',
                            style: androidTheme().textTheme.display1,
                          ))
                    ],
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: androidTheme().textTheme.display1,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
