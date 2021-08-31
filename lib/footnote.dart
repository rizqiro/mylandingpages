import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_landing_page/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class FootNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      width: size.width < 650 ? size.width * 0.3 : null,
      color: orangeColor,
      child: Container(
        alignment: Alignment.center,
        child: Container(
          width: size.width < 650 ? size.width : size.width * 0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width > 650 ? size.width * 0.35 : size.width * 0.5,
                height: size.width < 650 ? size.height * 0.3 : null,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Have an Idea in Your Mind', style: GoogleFonts.roboto(
                      fontSize: size.width > 828 ? 40 : size.width * (40/828),
                      color: Colors.white,
                    ),),
                    SizedBox(height: 5,),
                    Text('Just take a seat and contact me in the button below',
                      style: GoogleFonts.lato(
                          color: Colors.white
                      ),
                    ),
                    SizedBox(height: 15,),
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
                        style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color: orangeColor, fontSize: 12),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
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
              ),
              Image.asset(
                'assets/images/ideas.png',
                width: size.width * 0.35 < 258 ? size.width * 0.35 : 256,
                height: size.width * 0.35 * (256 / 226),
              )
            ],
          ),
        ),
      ),
    );
  }
}
