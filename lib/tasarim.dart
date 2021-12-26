import 'package:blue_ajans/katalogSiparisiFormu.dart';
import 'package:blue_ajans/logoTasarimSiparisiFormu.dart';
import 'package:blue_ajans/main.dart';
import 'package:blue_ajans/projeTakip.dart';
import 'package:flutter/material.dart';
import 'tasarim_yazilimSayfalariSecenekleri.dart';

class Tasarim extends StatelessWidget {
  const Tasarim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Tasarim2());
  }
}

class Tasarim2 extends StatelessWidget {
  const Tasarim2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: [
              Container(
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/arkaPlan.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child:Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Image.asset("assets/logo.png"),
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
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
                            title: Text('TASARIM',textAlign: TextAlign.center,style:TextStyle(fontSize:40,fontWeight: FontWeight.bold)),
                            subtitle: Text('Katalog, Logo, Kurumsal Kimlik Promosyon Taleplerinze'
                                'Hızlı Ve Efektif Çözümler Üretiyoruz. Proje Çözümlerimiz İle İlgili Size Detaylı'
                                'Bilgti Vermek İsteriz. 0312 394 2583 Numaralı Telefondan Bize Ulaşabilirsiniz.',textAlign: TextAlign.center,style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
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
                          "katalog", "Katalog Tasarım"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>KatalogSiparisFormu()),
                        );
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(50, 30),
                          alignment: Alignment.centerLeft),
                      child: buildTasarimYazilimSecenek(
                          "logoTasarim", "Logo Tasarım"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LogoSiparisFormu()),
                        );
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(50, 30),
                          alignment: Alignment.centerLeft),
                      child: buildTasarimYazilimSecenek(
                          "arkaPlan", "Kurumsal Kimlik"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProjeTakipForm()),
                        );
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(50, 30),
                          alignment: Alignment.centerLeft),
                      child: buildTasarimYazilimSecenek(
                          "brosurTasarim", "Broşür Tasarımı"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProjeTakipForm()),
                        );
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(50, 30),
                          alignment: Alignment.centerLeft),
                      child: buildTasarimYazilimSecenek(
                          "arkaPlan", "Ürün Etiket Tasarımı"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProjeTakipForm()),
                        );
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(50, 30),
                          alignment: Alignment.centerLeft),
                      child: buildTasarimYazilimSecenek(
                          "ofset", "Ofset Ve Dijital Baskı"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProjeTakipForm()),
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
