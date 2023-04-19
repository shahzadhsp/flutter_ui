import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        LayoutBuilder(
          builder: ((p0, p1) {
            var width = p1.maxWidth;
            var height = p1.maxHeight;
            return Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(width * 0.05, height * 0.1, 0, 0),
                  child: Container(
                    width: width * 0.9,
                    height: height * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Column(
                      children: [
                        
                       SizedBox(height: height * 0.04,),
                        
                        Padding(
                          padding: EdgeInsets.only(left: width *0.12 ),
                          child: Text(
                            'Ali',
                            textScaleFactor: 1,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: width * 0.13),
                          child: Text(
                            '31203-9876578-9',
                            textScaleFactor: 1,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                             Padding(
                                padding: EdgeInsets.only(left: width * 0.35)),
                            Text(
                              'Flutter F8',
                              // textScaleFactor: 1,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: width * 0.02),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: width * 0.03),
                                    child: Text(
                                      'Pay Fee',textScaleFactor: 1,
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(width * 0.1, height * 0.04, 0, 0),
                  child: Container(
                    width: width * 0.24,
                    height: height * 0.30,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(width * 0.07)),
                  ),
                ),
              ],
            );
          }),
        )
      ]),
    );
  }
}
