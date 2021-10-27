import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          leading: Container(
            margin: EdgeInsets.only(
              left: 10,
            ),
            child: Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Container(
            margin: EdgeInsets.only(
              left: 10,
            ),
            child: Text(
              "PROFILE",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        //here are all body contants
        body: Stack(
          children: [
            //background image
            Container(
              width: double.infinity,
              height: double.infinity,
              child: FittedBox(
                fit: BoxFit.cover,
                child:  Image(
                  image: AssetImage('assets/image/minion.jpg'),
                ),
              ),
            ),

            //all text or contants
            Container(
              width: double.infinity,
              decoration: new BoxDecoration(
                color: Color(0xff2C96F0).withOpacity(0.93),
              ),
              child: Center(

                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(300.0),
                            child: Image(
                              image: AssetImage('assets/image/minion.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //  men name
                        Container(
                          margin: EdgeInsets.only(
                            top: 25,
                          ),
                          child: Text(
                            "Minions",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //About
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Lorem Ipsum is simply dummy ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "text of the printing and typesetting industry.",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Lorem Ipsum has",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    //post, follower and following status
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(width: 0.5, color: Colors.white),
                              bottom: BorderSide(width: 0.5, color: Colors.white),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "345",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "POSTS",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "5665765",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "FOLLOWERS",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "834",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "FOLLOWING",
                                      style: TextStyle(
                                        color: Colors.white,
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

                    //  Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Spacer(),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 30,
                            ),
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.account_circle,
                                  color: Colors.black87,
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 15,
                                  ),
                                  child: Text(
                                    "FOLLOW",
                                    style: TextStyle(color: Colors.black87),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Spacer(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}