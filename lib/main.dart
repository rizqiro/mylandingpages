import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_landing_page/aboutme.dart';
import 'package:my_landing_page/footnote.dart';
import 'package:my_landing_page/myexpertise.dart';
import 'package:my_landing_page/offering.dart';
import 'package:my_landing_page/worksandeducation.dart';
import 'constant.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'dart:html' as html;
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rizqi Oppa Landing Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

List<Widget> _widgetContent = [MainPage(), AboutMe(), MyExpertise(), WorksAndEducation(), MyOffering(), FootNote()];
final ItemScrollController itemScrollController = ItemScrollController();
final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: size.height,
          child: Column(
            children: [
              Container(
                  color: Colors.white,
                  height: size.width > 650 ? size.height * 0.08 : size.height * 0.06,
                  width: size.width,
                  child: Column(
                    children: [
                      Container(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: size.width > 650 ? size.height * 0.08 : size.height * 0.06,
                          width:
                              size.width > 650 ? size.width * 0.7 : size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/rlogo.png', scale: size.width > 650 ? 1 : 1.5,),
                              size.width > 650 ? HeaderWide() : HeaderSmall()
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              Expanded(
                child: Container(
                  child: ScrollablePositionedList.builder(
                      itemCount: _widgetContent.length,
                      itemBuilder: (context, index) => Container(child: _widgetContent[index],),
                      itemPositionsListener: itemPositionsListener,
                      itemScrollController: itemScrollController,
                  )
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth > 650) {
          return Container(
            width: size.width,
            height: size.height - (size.height * 0.08),
            child: Stack(
              children: [
                Container(
                  color: grayBackgroundColor,
                  alignment: Alignment.center,
                  child: Container(
                    width: size.width * 0.7,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildContainerMainPage(size, wide: true),
                        SizedBox(
                          width: size.width * 0.05,
                        ),
                        Image.asset(
                          'assets/images/programmer.png',
                          width:
                          size.width * 0.32 < 544 ? size.width * 0.32 : 544,
                          height: size.width * (459 / 544),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            html.window.open('https://www.facebook.com/rizqiakanishi', 'new tab');
                          },
                          icon: Image.asset(
                            'assets/images/facebook.png',
                            scale: 5,
                          )),
                      IconButton(
                          onPressed: () {
                            html.window.open('https://www.instagram.com/rizqi_ro/', 'new tab');
                          },
                          icon: Image.asset(
                            'assets/images/instagram.png',
                            scale: 5,
                          )),
                      IconButton(
                          onPressed: () {
                            html.window.open('https://www.linkedin.com/in/rizqi-romadhon-4763a81a4/', 'new tab');
                          },
                          icon: Image.asset(
                            'assets/images/linkedin.png',
                            scale: 5,
                          )),
                      IconButton(
                          onPressed: () {
                            html.window.open('https://wa.link/z7zl2s', 'new tab');
                          },
                          icon: Image.asset(
                            'assets/images/whatsapp.png',
                            scale: 5,
                          ))
                    ],
                  ),
                )
              ],
            ),
          );
        }
        else {
          return Container(
            width: size.width,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  color: grayBackgroundColor,
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/programmer.png',
                          width:
                          size.width < 544 ? size.width : 544,
                          height: size.width * (459 / 544),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        buildContainerMainPage(size, wide: false),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            html.window.open('https://www.facebook.com/rizqiakanishi', 'new tab');
                          },
                          icon: Image.asset(
                            'assets/images/facebook.png',
                            scale: 5,
                          )),
                      IconButton(
                          onPressed: () {
                            html.window.open('https://www.instagram.com/rizqi_ro/', 'new tab');
                          },
                          icon: Image.asset(
                            'assets/images/instagram.png',
                            scale: 5,
                          )),
                      IconButton(
                          onPressed: () {
                            html.window.open('https://www.linkedin.com/in/rizqi-romadhon-4763a81a4/', 'new tab');
                          },
                          icon: Image.asset(
                            'assets/images/linkedin.png',
                            scale: 5,
                          )),
                      IconButton(
                          onPressed: () {
                            html.window.open('https://wa.link/z7zl2s', 'new tab');
                          },
                          icon: Image.asset(
                            'assets/images/whatsapp.png',
                            scale: 5,
                          ))
                    ],
                  ),
                )
              ],
            ),
          );
        }
      },
    );
  }

  Container buildContainerMainPage(Size size, {bool? wide}) {
    return Container(
                        width: wide == true ? size.width * 0.33 : size.width,
                        color: grayBackgroundColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SelectableText('Hi, I am',
                                style: GoogleFonts.roboto(
                                    color: orangeColor, fontSize: 25)),
                            SelectableText('Rizqi Romadhon',
                                style: GoogleFonts.notoSans(
                                    color: darkBlueColor,
                                    fontSize: size.width > 920 ? 50 : size.width * (50/920),
                                    fontWeight: FontWeight.w700)),
                            SelectableText('Joyfull Artist and Employee',
                                style: GoogleFonts.notoSans(
                                    color: darkBlueColor,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 15,
                            ),
                            SelectableText(
                                'Thirst of knowledge will open your eyes how vast the world is and how small you are inside of it. The will of learning will take you to a little piece of its wonderfull'),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () async {
                                    // 1) set url
                                    String downloadURL = 'https://www.dropbox.com/s/u16tb1yvrakm7an/Profile.pdf?dl=0';
                                    // 2) request
                                    html.AnchorElement anchorElement = new html.AnchorElement(href: downloadURL);
                                    anchorElement.download = downloadURL;
                                    anchorElement.click();
                                  },
                                  child: Text('Download CV',
                                      style: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.bold)),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<
                                          Color>(orangeColor),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(18.0),
                                          )),
                                      elevation: MaterialStateProperty
                                          .all<double>(0.0),
                                      fixedSize:
                                      MaterialStateProperty.all<Size>(
                                          Size(150, 35))),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
  }
}

class HeaderSmall extends StatefulWidget {
  @override
  _HeaderSmallState createState() => _HeaderSmallState();
}

class _HeaderSmallState extends State<HeaderSmall> {

  Map<String?, int?> menuMap = {
    'Home' : 0,
    'My Intro' : 1,
    'Expertise' : 2,
    'Education' : 3,
    'Services' : 4,
  };

  List<String> displayDropDown = ['My Intro', 'Expertise', 'Education', 'Services',];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 65,
            child: DropdownButton<String>(
                icon: Icon(Icons.menu),
                isExpanded: true,
                onChanged: (newValue) {
                  setState(() {
                    itemScrollController.scrollTo(index: menuMap[newValue]!, duration: Duration(milliseconds: 1500), curve: Curves.bounceOut);
                  });
                },
                underline: Container(),
                items: displayDropDown
                    .map((String value) => DropdownMenuItem<String>(
                    value: value, child: Text(value)))
                    .toList()),
          ),
          SizedBox(width: 15,),
          ElevatedButton(
            onPressed: () async {
              const mailUrl = 'mailto:rizqi-romadhon@outlook.com';
              try {
                await launch(mailUrl);
              } catch (e) {
                print(e);
              }
            } ,
            child: Text(
              'Contact Me',
              style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xFFFF9442)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                elevation: MaterialStateProperty.all<double>(0),
                fixedSize:
                MaterialStateProperty.all<Size>(Size.fromWidth(90))),
          )
        ],
      ),
    );
  }
}

class HeaderWide extends StatefulWidget {
  @override
  _HeaderWideState createState() => _HeaderWideState();
}

class _HeaderWideState extends State<HeaderWide> {
  List<List<String?>> menuList = [
    ['Home', 'My Intro', 'Expertise', 'Education', 'Services'], // < 1200
    ['Home', 'My Intro', 'Expertise', 'Education'], // < 1000
    ['Home', 'My Intro', 'Expertise'], // < 850
    ['Home', 'My Intro'], // < 680
    [
      'Home',
    ]
  ];

  List<List<String>> dropDownMenuList = [
    ['Services'],
    ['Education', 'Services'],
    ['Expertise', 'Education', 'Services',],
    ['My Intro', 'Expertise', 'Education', 'Services',]
  ];
  
  Map<String?, int?> menuMap = {
    'Home' : 0,
    'My Intro' : 1,
    'Expertise' : 2,
    'Education' : 3,
    'Services' : 4,
  };
  
  List<String?> displayMenu = [];
  List<String> displayDropDown = [];

  String dropdownValue = 'Home';

  _HeaderWideState() {
    displayMenu = menuList[0];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraint) {
        if (size.width > 1420) {
          displayMenu = menuList[0];
          displayDropDown = [];
        } else if (size.width <= 1420 && size.width > 1250) {
          displayMenu = menuList[1];
          displayDropDown = dropDownMenuList[0];
        } else if (size.width <= 1250 && size.width > 1090) {
          displayMenu = menuList[2];
          displayDropDown = dropDownMenuList[1];
        } else if (size.width <= 1090 && size.width > 900) {
          displayMenu = menuList[3];
          displayDropDown = dropDownMenuList[2];
        } else if (size.width <= 900 && size.width > 663) {
          displayMenu = menuList[4];
          displayDropDown = dropDownMenuList[3];
        }

        return Container(
          width: size.width * 0.45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List<TextButton>.generate(
                        displayMenu.length,
                        (index) => TextButton(
                            onPressed: () {
                              itemScrollController.scrollTo(index: menuMap[displayMenu[index]]!, duration: Duration(milliseconds: 1500), curve: Curves.bounceOut);
                            },
                            child: Text(
                              displayMenu[index]!,
                              style: headerTextStyle,
                            )))),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 65,
                child: DropdownButton<String>(
                    icon: Icon(Icons.menu),
                    isExpanded: true,
                    onChanged: (newValue) {
                      setState(() {
                        itemScrollController.scrollTo(index: menuMap[newValue]!, duration: Duration(milliseconds: 1500), curve: Curves.bounceOut);
                      });
                    },
                    underline: Container(),
                    items: displayDropDown
                        .map((String value) => DropdownMenuItem<String>(
                            value: value, child: Text(value)))
                        .toList()),
              ),
              SizedBox(width: 15,),
              ElevatedButton(
                onPressed: () async {
                  const mailUrl = 'mailto:rizqi-romadhon@outlook.com';
                  try {
                    await launch(mailUrl);
                  } catch (e) {
                    print(e);
                  }
                } ,
                child: Text(
                  'Contact Me',
                  style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFFF9442)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                    elevation: MaterialStateProperty.all<double>(0),
                    fixedSize:
                        MaterialStateProperty.all<Size>(Size.fromWidth(95))),
              )
            ],
          ),
        );
      },
    );
  }
}
