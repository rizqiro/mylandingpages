import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constant.dart';

class MyExpertise extends StatefulWidget {
  @override
  _MyExpertiseState createState() => _MyExpertiseState();
}

class _MyExpertiseState extends State<MyExpertise> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth > 650) {
          return Container(
            width: size.width,
            height: size.height*0.6,
            child: Container(
                color: darkGrayBackgroundColor,
                alignment: Alignment.center,
                child: Container(
                  width: size.width * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectableText('My Expertise Area',
                          style: GoogleFonts.notoSans(
                              color: darkBlueColor,
                              fontSize:40,
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: 30,),
                      buildRow(size, wide: true)
                    ],
                  ),
                )),
          );
        }
        else {
          return Container(
            width: size.width,
            child: Container(
                color: darkGrayBackgroundColor,
                alignment: Alignment.center,
                child: Container(
                  width: size.width * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectableText('My Expertise Area',
                          style: GoogleFonts.notoSans(
                              color: darkBlueColor,
                              fontSize:40,
                              fontWeight: FontWeight.w700), textAlign: TextAlign.center,),
                      SizedBox(height: 30,),
                      buildRow(size, wide: false)
                    ],
                  ),
                )),
          );
        }
      },
    );
  }

  Widget buildRow(Size size, {required bool? wide}) {
    return wide == true ?
          Row(
            children: [
              buildContainer1(wide, size),
              SizedBox(
                width: wide == true ? size.width * 0.04 : null,
                height: wide == false ? 20 : null,
              ),
              buildContainer2(wide, size),
            ],
          )
        : Column(
            children: [
              buildContainer1(wide, size),
              SizedBox(
                width: wide == true ? size.width * 0.04 : null,
                height: wide == false ? 20 : null,
              ),
              buildContainer2(wide, size),
            ],
          );
  }

  Container buildContainer2(bool? wide, Size size) {
    return Container(
                        width: wide == true ? size.width * 0.33 : size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ExpertisePercentage(
                              title: 'Fusion 360',
                              percentage: 60,
                            ),
                            ExpertisePercentage(
                              title: 'Electrical Design',
                              percentage: 70,
                            ),
                            ExpertisePercentage(
                              title: 'Adobe Illustrator',
                              percentage: 70,
                            ),
                            ExpertisePercentage(
                              title: 'Clip Studio Paint',
                              percentage: 70,
                            ),
                          ],
                        ),
                      );
  }

  Container buildContainer1(bool? wide, Size size) {
    return Container(
                        width: wide == true ? size.width * 0.33 : size.width,
                        child: Column(
                          children: [
                            ExpertisePercentage(
                              title: 'Flutter Mobile/Web',
                              percentage: 70,
                            ),
                            ExpertisePercentage(
                              title: 'Microsoft Excel',
                              percentage: 85,
                            ),
                            ExpertisePercentage(
                              title: 'PLC OMRON',
                              percentage: 80,
                            ),
                            ExpertisePercentage(
                              title: 'Arduino',
                              percentage: 70,
                            ),
                          ],
                        ),
                      );
  }
}

class ExpertisePercentage extends StatelessWidget {
  ExpertisePercentage({this.title, this.percentage});

  final String? title;
  final int? percentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SelectableText(title!,
                style: GoogleFonts.notoSans(
                    color: darkBlueColor, fontWeight: FontWeight.w700)),
            SelectableText('${percentage!.toInt()}%',
                style: GoogleFonts.notoSans(
                    color: darkBlueColor, fontWeight: FontWeight.w700)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        LinearProgressIndicator(
          minHeight: 8,
          value: percentage!.toDouble() / 100,
          color: orangeColor,
          backgroundColor: Colors.grey,
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
