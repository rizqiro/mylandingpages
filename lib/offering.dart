import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

class MyOffering extends StatefulWidget {
  @override
  _MyOfferingState createState() => _MyOfferingState();
}

class _MyOfferingState extends State<MyOffering> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraint) {
        return Container(
            width: size.width,
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 50),
                color: Colors.white,
                alignment: Alignment.center,
                child: Container(
                  width: size.width * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectableText('For You',
                          style: GoogleFonts.roboto(
                            color: orangeColor,
                            fontSize:20,)),
                      SelectableText('My Services',
                          style: GoogleFonts.notoSans(
                              color: darkBlueColor,
                              fontSize:40,
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: 30,),
                      Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        children: [
                            OfferingTile(
                              title: 'Web/Mobile Design',
                              subtitle: 'I have worked on several mobile app using flutter, and since flutter web are stable now in the latest version I could provide you a web design',
                              imagePath: 'assets/images/webdesign.png',
                            ),
                            OfferingTile(
                              title: 'Simple Automation',
                              subtitle: 'I have done some projects in automation system where I was in college, I am using arduino or PLC as the brain of my automation system',
                              imagePath: 'assets/images/automation.png',
                            ),
                            OfferingTile(
                              title: 'Home Electrical',
                              subtitle: 'As automation includes knowledge about electrical design, I could also provide you electrical services for your home',
                              imagePath: 'assets/images/electricity.png',
                            ),
                            OfferingTile(
                              title: 'Art/Illustration',
                              subtitle: 'I could provide you a cartoon/caricature version of your portrait or drawing your beloved anime/cartoon character. I also provide a WPAP design service',
                              imagePath: 'assets/images/colors.png',
                            ),
                            OfferingTile(
                              title: 'English Translation',
                              subtitle: 'I have contribute to some project in transifex such as VLC, Mageia OS (linux), and any other open source software for translating it\'s content.',
                              imagePath: 'assets/images/translation.png',
                            ),
                            OfferingTile(
                              title: 'Cake Decoration',
                              subtitle: 'I have been in homemade cake industry with my wife for about 2 years currently, and I believe that you can count on me (also my wife) for this service',
                              imagePath: 'assets/images/cake.png',
                            ),
                        ],
                      )
                    ],
                  ),
                )),
          );
      },
    );
  }
}

class OfferingTile extends StatelessWidget {
  OfferingTile({required this.imagePath, required this.title, required this.subtitle});

  final String imagePath;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width > 990
          ? (size.width * 0.7) / 3 - 20
          : size.width > 750
              ? (size.width * 0.7) / 2 - 20
              : size.width,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.height * 0.08,
            height: size.height * 0.08,
            decoration: BoxDecoration(
              // color: orangeColorSub,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                border: Border.all(width: 3, color: orangeColor)
            ),
            child: Image.asset(imagePath, scale: 1.5,),
          ),
          Divider(thickness: 2, color: darkGrayBackgroundColor,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: GoogleFonts.notoSans(
                    color: darkBlueColor,
                    fontSize:17,
                    fontWeight: FontWeight.w700),),
                SizedBox(height: 5,),
                Text(
                    subtitle,
                    style: GoogleFonts.notoSans(fontSize: 13),
                  ),
                ],
            )
          ),
        ],
      ),
    );
  }
}