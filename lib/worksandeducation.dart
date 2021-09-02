import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

class WorksAndEducation extends StatefulWidget {
  @override
  _WorksAndEducationState createState() => _WorksAndEducationState();
}

class _WorksAndEducationState extends State<WorksAndEducation> {
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectableText('Qualifications',
                          style: GoogleFonts.roboto(
                              color: orangeColor,
                              fontSize:20,)),
                      SelectableText('My Awesome Journey',
                          style: GoogleFonts.notoSans(
                              color: darkBlueColor,
                              fontSize:40,
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          Container(
                            width: size.width * 0.33,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/images/education.png', color: darkBlueColor, width: 30, height: 30 * (79/115),),
                                    SizedBox(width: 10,),
                                    Text('Education', style: GoogleFonts.lato(
                                    color: darkBlueColor,
                                        fontSize:22,
                                        fontWeight: FontWeight.w700))
                                  ],
                                ),
                                SizedBox(height: 30,),
                                WorksEduListTile(title: 'Politeknik TEDC Bandung', subtitle: 'Mechatronics', year: '2012 - 2016'),
                                WorksEduListTile(title: 'BBPLK Bandung', subtitle: 'Mechanical CAD Drafter', year: '2014 - 2014'),
                                WorksEduListTile(title: 'SMK Negeri 5 Banjarmasin', subtitle: 'Automotive', year: '2009 - 2012'),
                                WorksEduListTile(title: 'LBPP LIA Banjarmasin', subtitle: 'Advanced English', year: '2010 - 2011'),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.04,
                          ),
                          Container(
                            width: size.width * 0.33,
                            child: Column(

                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/images/work.png', color: darkBlueColor, width: 30, height: 30 * (79/115),),
                                    SizedBox(width: 10,),
                                    Text('Experience', style: GoogleFonts.lato(
                                        color: darkBlueColor,
                                        fontSize:22,
                                        fontWeight: FontWeight.w700))
                                  ],
                                ),
                                SizedBox(height: 30,),
                                WorksEduListTile(title: 'Asahimas Flat Glass, Tbk', subtitle: 'Production Engineer', year: '2016 - Now'),
                                WorksEduListTile(title: 'United Tractor Pandu Engineering', subtitle: 'Engineer\'s assistant', year: '2015 - 2016'),
                                WorksEduListTile(title: 'Tekno Multi Utama', subtitle: 'Microcontroller Programmer', year: '2015 - 2015'),
                                WorksEduListTile(title: 'Transifex', subtitle: 'Translate Contributor', year: '2012 - 2014'),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
          );
        } else {
          return Container(
            width: size.width,
            child: Container(
                color: Colors.white,
                alignment: Alignment.center,
                child: Container(
                  width: size.width * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectableText('Qualifications',
                          style: GoogleFonts.roboto(
                            color: orangeColor,
                            fontSize:20,)),
                      SelectableText('My Awesome Journey',
                          style: GoogleFonts.notoSans(
                              color: darkBlueColor,
                              fontSize:40,
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: 30,),
                      Container(
                        width: size.width,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/education.png', color: darkBlueColor, width: 30, height: 30 * (79/115),),
                                SizedBox(width: 10,),
                                Text('Education', style: GoogleFonts.lato(
                                    color: darkBlueColor,
                                    fontSize:22,
                                    fontWeight: FontWeight.w700))
                              ],
                            ),
                            SizedBox(height: 30,),
                            WorksEduListTile(title: 'Politeknik TEDC Bandung', subtitle: 'Mechatronics', year: '2012 - 2016'),
                            WorksEduListTile(title: 'BBPLK Bandung', subtitle: 'Mechanical CAD Drafter', year: '2014 - 2014'),
                            WorksEduListTile(title: 'SMK Negeri 5 Banjarmasin', subtitle: 'Automotive', year: '2009 - 2012'),
                            WorksEduListTile(title: 'LBPP LIA Banjarmasin', subtitle: 'Advanced English', year: '2010 - 2011'),
                            SizedBox(height: 30,),
                            Row(
                              children: [
                                Image.asset('assets/images/work.png', color: darkBlueColor, width: 30, height: 30 * (79/115),),
                                SizedBox(width: 10,),
                                Text('Experience', style: GoogleFonts.lato(
                                    color: darkBlueColor,
                                    fontSize:22,
                                    fontWeight: FontWeight.w700))
                              ],
                            ),
                            SizedBox(height: 30,),
                            WorksEduListTile(title: 'Asahimas Flat Glass, Tbk', subtitle: 'Production Engineer', year: '2016 - Now'),
                            WorksEduListTile(title: 'United Tractor Pandu Engineering', subtitle: 'Engineer\'s assistant', year: '2015 - 2016'),
                            WorksEduListTile(title: 'Tekno Multi Utama', subtitle: 'Microcontroller Programmer', year: '2015 - 2015'),
                            WorksEduListTile(title: 'Transifex', subtitle: 'Translate Contributor', year: '2012 - 2014'),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          );
        }
      },
    );
  }
}

class WorksEduListTile extends StatelessWidget {
  WorksEduListTile({ required this.title, required this.subtitle, required this.year});

  final String title;
  final String subtitle;
  final String year;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        padding: EdgeInsets.only(left: 30),
        decoration: BoxDecoration(
          border: Border(left: BorderSide(color: orangeColor, width: 3)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: GoogleFonts.notoSans(
                color: darkBlueColor,
                fontSize:17,
                fontWeight: FontWeight.w700)),
            Text(subtitle, style: GoogleFonts.notoSans(
                color: darkBlueColor,
                fontSize:15)),
            SizedBox(height: 5,),
            Row(
              children: [
                Icon(Icons.circle_outlined, color: orangeColor, size: 10,),
                SizedBox(width: 10,),
                Text(year, style: TextStyle(color: orangeColor),),
              ],
            )
          ],
        ),
      ),
    );
  }
}