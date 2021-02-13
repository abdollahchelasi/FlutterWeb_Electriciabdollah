import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Opacity(
                    opacity: 0.58,
                    child: Container(
                      width: size.width,
                      height: size.height,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/abdol.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Column(
                    children: [
                      ClipPath(
                        clipper: clip(),
                        child: Container(
                          width: double.infinity,
                          height: size.height * .42,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Colors.grey[700],
                            Colors.grey[800],
                            Colors.grey[900]
                          ])),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'الکتریکی',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    package: 'google_fonts_arabic',
                                    fontFamily: ArabicFonts.Markazi_Text,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: size.width * .02,
                              ),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[900],
                                        shape: BoxShape.circle),
                                  ),
                                  Text(
                                    'عبدالله',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        package: 'google_fonts_arabic',
                                        fontFamily: ArabicFonts.Markazi_Text,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(30),
                        child: Text(
                          """عرضه کننده لوازم الکتریکی , رنگ, ابزارآلات, انواع چسب, انواع کلید و پریز ایرانی, انواع ماسک پارچه ای و فیلتردار و ماسک ۳ لایه ,انواع دستگیره های درب ایرانی دلتا و سلطنتی در رنگ های مختلف , مرکز پخش انواع کنترل به صورت عمده و تکی ارسال به تمام جزیره قشم...
                                    """,
                          style: TextStyle(
                              color: Colors.white,
                              package: 'google_fonts_arabic',
                              fontSize: 20,
                              fontFamily: ArabicFonts.Lalezar),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: size.width * .2,
                              height: size.height * .14,
                              margin: EdgeInsets.symmetric(
                                  horizontal: size.width * .01),
                              decoration: BoxDecoration(
                                  color: Colors.teal[900],
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  // borderRadius: BorderRadius.circular(22)
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Container(
                                  width: size.width * .2,
                                  height: size.height,
                                  decoration: BoxDecoration(
                                      color: Colors.black45,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Text(
                                      'ابزارآلات',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: ArabicFonts.Mada,
                                          package: 'google_fonts_arabic'),
                                    ),
                                  ),
                                ),
                              )),
                          Container(
                              width: size.width * .2,
                              height: size.height * .14,
                              margin: EdgeInsets.symmetric(
                                  horizontal: size.width * .01),
                              decoration: BoxDecoration(
                                  color: Colors.red[900],

                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: Center(
                                child: Container(
                                  width: size.width,
                                  height: size.height * .14,
                                  decoration: BoxDecoration(
                                      color: Colors.black45,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Text(
                                      'کنترل',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: ArabicFonts.Mada,
                                          package: 'google_fonts_arabic'),
                                    ),
                                  ),
                                ),
                              )),
                          Container(
                              width: size.width * .2,
                              height: size.height * .14,
                              margin: EdgeInsets.symmetric(
                                  horizontal: size.width * .01),
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: Center(
                                child: Container(
                                  width: size.width,
                                  height: size.height * .14,
                                  decoration: BoxDecoration(
                                      color: Colors.white10,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Text(
                                      'رنگ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: ArabicFonts.Mada,
                                          package: 'google_fonts_arabic'),
                                    ),
                                  ),
                                ),
                              )),
                          Container(
                              width: size.width * .2,
                              height: size.height * .14,
                              margin: EdgeInsets.symmetric(
                                  horizontal: size.width * .01),
                              decoration: BoxDecoration(

                                      color: Colors.indigo[900],
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: Center(
                                child: Container(
                                  width: size.width,
                                  height: size.height * .14,
                                  decoration: BoxDecoration(
                                    color: Colors.black45,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'چسب',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: ArabicFonts.Mada,
                                          package: 'google_fonts_arabic'),
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Container(
                  width: size.width,
                  //height: size.height,
                  color: Colors.grey[900],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Text(
                            'ارتباط با من',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                package: 'google_fonts_arabic',
                                fontFamily: ArabicFonts.Amiri),
                          )),
                      SizedBox(
                        height: size.height * .03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('تلفن تماس :',
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  package: 'google_fonts_arabic',
                                  fontWeight: FontWeight.bold,
                                  fontFamily: ArabicFonts.Markazi_Text)),
                          SizedBox(
                            width: size.width * .05,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '09176231629',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: size.height * .01,
                              ),
                              Text(
                                '09177881629',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: size.height * .01,
                              ),
                              Text(
                                '09907891629',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * .03,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: Text(
                          'آدرس :  قشم - روستای کاروان , روبروی آب شیرین کن کوشه , الکتریکی عبدالله',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              package: 'google_fonts_arabic',
                              fontFamily: ArabicFonts.Markazi_Text,
                              fontSize: 20,
                              color: Colors.grey[900]),
                        ),
                      ),
                      SizedBox(
                        height: size.height * .03,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'تمامی اجناس ها داخل اپلیکیشن قرار گرفته برای دیدن اجناس ها اپلیکیشن رو دانلود کنید',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  package: 'google_fonts_arabic',
                                  fontFamily: ArabicFonts.Markazi_Text,
                                  fontSize: 20,
                                  color: Colors.grey[900]),
                            ),
                            Icon(
                              Icons.arrow_downward_sharp,
                              color: Colors.grey[900],
                              size: 30,
                            ),
                          ],
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          launch(
                              'http://electriciabdollah.ir/apk/%D8%A7%D9%84%DA%A9%D8%AA%D8%B1%DB%8C%DA%A9%DB%8C%20%D8%B9%D8%A8%D8%AF%D8%A7%D9%84%D9%84%D9%87.apk');
                        },
                        child: Container(
                          width: 144,
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(6),
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'دانلود اپلیکیشن',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    package: 'google_fonts_arabic',
                                    fontFamily: ArabicFonts.Changa),
                              ),
                              Icon(
                                Icons.cloud_download,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * .03,
                      ),
                      Container(
                        width: size.width,
                        //height: size.height * .1,
                        color: Colors.grey[800],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'کلیه حقوق این سایت متعلق به',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.grey[500],
                                  package: 'google_fonts_arabic',
                                  fontFamily: ArabicFonts.Jomhuria,
                                  fontWeight: FontWeight.w200),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {
                                launch('http://www.abdollahchelasi.ir/#/');
                              },
                              child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  margin: EdgeInsets.symmetric(vertical: 4),
                                  decoration: BoxDecoration(
                                      color: Colors.grey[900],
                                      borderRadius: BorderRadius.circular(11)),
                                  child: Text(
                                    'عبدالله چلاسی',
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        package: 'google_fonts_arabic',
                                        fontFamily: ArabicFonts.Jomhuria,
                                        fontWeight: FontWeight.w200),
                                  )),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'میباشد',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.grey[500],
                                  package: 'google_fonts_arabic',
                                  fontFamily: ArabicFonts.Jomhuria,
                                  fontWeight: FontWeight.w200),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class clip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();

    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
