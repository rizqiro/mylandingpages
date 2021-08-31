import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constant.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth > 650) {
          return Container(
            width: size.width,
            height: size.height - (size.height * 0.08),
            child: Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: Container(
                width: size.width * 0.7,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/aboutme.png',
                      width:
                      size.width * 0.35 < 600 ? size.width * 0.35 : 600,
                      height: size.width * 0.35 * (522 / 600),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    buildContainer(size, wide: true),
                  ],
                ),
              ),
            ),
          );
        } else {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            width: size.width,
            child: Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: Container(
                width: size.width,
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/aboutme.png',
                      width:
                      size.width < 600 ? size.width  : 600,
                      height: size.width * (522 / 600),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    buildContainer(size, wide: false),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }

  Container buildContainer(Size size, {bool? wide}) {
    return Container(
                    width: wide == true ? size.width * 0.30 : size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText('My Intro',
                            style: GoogleFonts.roboto(
                                color: orangeColor, fontSize: 25)),
                        SelectableText('About Me',
                            style: GoogleFonts.notoSans(
                                color: darkBlueColor,
                                fontSize: size.width > 912 ? 50 : size.width * (50/912),
                                fontWeight: FontWeight.w700)),
                        SizedBox(
                          height: 15,
                        ),
                        SelectableText(
                            'Thirst of knowledge will open your eyes how vast the world is and how small you are inside of it. The will of learning will take you to a little piece of its wonderfull'),
                        SizedBox(
                          height: 20,
                        ),
                        Table(
                          columnWidths: {
                            0 : FixedColumnWidth(50),
                            1 : FixedColumnWidth(100),
                            2 : FixedColumnWidth(40),
                            3 : FixedColumnWidth(300),
                          },
                          children: [
                            TableRow(
                              children: [
                                Align(child: Icon(Icons.people_outline, color: orangeColor,), alignment: Alignment.centerLeft,),
                                SelectableText('Name', style: GoogleFonts.notoSans(color: darkBlueColor, fontWeight: FontWeight.w700)),
                                SelectableText(':'),
                                SelectableText('Rizqi Romadhon'),
                              ]
                            ),
                            TableRow(
                              children: [
                                Align(child: Icon(Icons.phone_outlined, color: orangeColor,), alignment: Alignment.centerLeft,),
                                SelectableText('Phone', style: GoogleFonts.notoSans(color: darkBlueColor, fontWeight: FontWeight.w700)),
                                SelectableText(':'),
                                SelectableText('0896-9271-1967'),
                              ]
                            ),
                            TableRow(
                              children: [
                                Align(child: Icon(Icons.email_outlined, color: orangeColor,), alignment: Alignment.centerLeft,),
                                SelectableText('Email', style: GoogleFonts.notoSans(color: darkBlueColor, fontWeight: FontWeight.w700)),
                                SelectableText(':'),
                                SelectableText('rizqi-romadhon@outlook.com'),
                              ]
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        SelectableText('My Interest',
                            style: GoogleFonts.notoSans(
                                color: darkBlueColor,
                                fontSize: 25,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 20,),
                        Container(
                          width: size.width,
                          child: Wrap(
                            spacing: 15,
                            children: [
                              Container(
                                width: 80,
                                child: Column(
                                  children: [
                                    Image.asset('assets/images/gaming.png',),
                                    SizedBox(width: 10,),
                                    SelectableText('Gaming', style : GoogleFonts.notoSans(color: darkBlueColor, fontWeight: FontWeight.w700)),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80,
                                child: Column(
                                  children: [
                                    Image.asset('assets/images/climbing.png',),
                                    SizedBox(width: 10,),
                                    SelectableText('Climbing', style : GoogleFonts.notoSans(color: darkBlueColor, fontWeight: FontWeight.w700)),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80,
                                child: Column(
                                  children: [
                                    Image.asset('assets/images/onlinelearning.png',),
                                    SizedBox(width: 10,),
                                    SelectableText('online\nlearning', style : GoogleFonts.notoSans(color: darkBlueColor, fontWeight: FontWeight.w700), textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80,
                                child: Column(
                                  children: [
                                    Image.asset('assets/images/drawing.png',),
                                    SizedBox(width: 10,),
                                    SelectableText('Drawing', style : GoogleFonts.notoSans(color: darkBlueColor, fontWeight: FontWeight.w700)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
  }
}
