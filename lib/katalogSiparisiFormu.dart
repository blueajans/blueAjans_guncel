import 'package:blue_ajans/DataSource.dart';
import 'package:flutter/material.dart';


class KatalogSiparisFormu extends StatelessWidget {
  const KatalogSiparisFormu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _adSoyad = TextEditingController();
  TextEditingController _telefon = TextEditingController();
  TextEditingController _mesaj = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/3,
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
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Text("KATALOG SİPARİŞİ",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          controller: _adSoyad,
                          decoration: const InputDecoration(
                            hintText: 'Ad Soyad',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _email,
                          decoration: const InputDecoration(
                            hintText: 'Mail Adresiniz',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _telefon,
                          decoration: const InputDecoration(
                            hintText: 'Telefon Numaranız',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _mesaj,
                          decoration: const InputDecoration(
                            hintText: 'Mesajınız(Ekran Yönü, İç Sayfa Yapısı, Kapak Olacak mı, Kapakta Kabartma Olacak mı,'
                                'Tasarımınız Hazır Mı)',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        /*TextFormField(
                          initialValue: "İç Sayfa Yapısı(kapak hariç sayfa sayısı 4 ün katı olmalı):",
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          initialValue: "Kapak Olacak mı(+4 sayfa):",
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          initialValue: "Kapakta Kabartma Olacak mı?:",
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          initialValue: "Telefon Uygulaması(Parlak/Mat):",
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          initialValue: "Tasarımınız Hazır mı, Hazır Değilse Tasarım İçin De Teklif İletelim Mi?:",
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          initialValue:"İlave Notlarınız:" ,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        */

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: ElevatedButton(
                            onPressed: () async {
                              // Validate will return true if the form is valid, or false if
                              // the form is invalid.

                              if (_formKey.currentState!.validate()) {
                               await DataSource().getTasarimModel(_email.value.text,_telefon.value.text,_adSoyad.value.text,_mesaj.value.text);

                               _email.clear();
                               _telefon.clear();
                               _adSoyad.clear();
                               _mesaj.clear();



                                // Process data.
                              }else{
                                print("olmadı");
                              }
                            },

                            child: const Text('TALEP GÖNDER'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
