import 'package:blue_ajans/teklifIsteFormu.dart';
import 'package:flutter/material.dart';
import 'tasarim_yazilimSayfalariSecenekleri.dart';

class Yazilim extends StatelessWidget {
  const Yazilim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Yazilim2());
  }
}

class Yazilim2 extends StatelessWidget {
  const Yazilim2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text('YAZILIM',textAlign: TextAlign.center,style:TextStyle(fontSize:40,fontWeight: FontWeight.bold)),
                          subtitle: Text('Mobil Ve Web Tabanlı Özel Yazılım Taleplerinize Hızlı Ve Efektif'
                              'Çözümler Üretiyoruz. Proje Süreçlerimiz İle İlgili Size Detaylı Bilgi İletmek İsteriz.'
                              '0312 394 25 83 Numaralı Telefondan Bize Ulaştırabilirsiniz.',textAlign: TextAlign.center,style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(50, 30),
                          alignment: Alignment.centerLeft),
                      child: buildTasarimYazilimSecenek(
                          "webYazilim", "Web Yazılım Projeleri"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TeklifIsteForm()),
                        );
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(50, 30),
                          alignment: Alignment.centerLeft),
                      child: buildTasarimYazilimSecenek(
                          "androidApp", "Mobil App Projeleri"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TeklifIsteForm()),
                        );
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(50, 30),
                          alignment: Alignment.centerLeft),
                      child: buildTasarimYazilimSecenek(
                          "webTasarim", "Web Tasarım Projeleri"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TeklifIsteForm()),
                        );
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(50, 30),
                          alignment: Alignment.centerLeft),
                      child: buildTasarimYazilimSecenek(
                          "arkaPlan", "Entegrasyonlar"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TeklifIsteForm()),
                        );
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(50, 30),
                          alignment: Alignment.centerLeft),
                      child: buildTasarimYazilimSecenek(
                          "eTicaret", "E-ticaret Projeleri"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TeklifIsteForm()),
                        );
                      },
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.blue[800],
        child: const Icon(Icons.phone),
      ),
    );
  }
}
