import 'package:blue_ajans/anaSayfaSecenekler.dart';
import 'package:blue_ajans/floatActionButton.dart';
import 'package:blue_ajans/projeTakip.dart';
import 'package:blue_ajans/tasarim.dart';
import 'package:blue_ajans/teklifIsteFormu.dart';
import 'package:blue_ajans/teknikDestek.dart';
import 'package:blue_ajans/yapimAsamasinda.dart';
import 'package:blue_ajans/yazilim.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class Anasayfa extends StatelessWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 450,
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/arkaPlan.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Image.asset("assets/logo.png"),
                      ),
                    ),
                    Positioned(
                      top: 250,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                              child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x54000000),
                                        spreadRadius: 4,
                                        blurRadius: 20,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image.asset(
                                        "assets/tasarim.jpeg",
                                        width:
                                        MediaQuery.of(context).size.width /
                                            2.2,
                                      ))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Tasarim()),
                                );
                              },
                            ),
                            TextButton(
                              child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x54000000),
                                        spreadRadius: 4,
                                        blurRadius: 20,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image.asset(
                                        "assets/yazilim.jpeg",
                                        width:
                                        MediaQuery.of(context).size.width /
                                            2.2,
                                      ))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Yazilim()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  TextButton(
                    child: buildSecenek(context, "teknikDestek"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TeknikDestek()),
                      );
                    },
                  ),
                  TextButton(
                    child: buildSecenek(context, "projeTakip"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProjeTakipForm()),
                      );
                    },
                  ),
                  TextButton(
                    child: buildSecenek(context, "teklifIsteyin"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TeklifIsteForm()),
                      );
                    },
                  ),
                  TextButton(
                    child: buildSecenek(context, "guncelFiyatlar"),
                    onPressed: () async {
                      final url =
                          'https://www.blueajans.com.tr/view/katalog.pdf';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                  ),
                  TextButton(
                    child: buildSecenek(context, "onlineTahsilat"),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            backgroundColor: Colors.blue,
                            duration: Duration(seconds: 4),
                            content: Text('Hizmet Yapım Aşamasındadır...')),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatActionButton(),
    );
  }
}

