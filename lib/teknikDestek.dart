import 'package:flutter/material.dart';

import 'DataSource.dart';

class TeknikDestek extends StatelessWidget {
  const TeknikDestek({Key? key}) : super(key: key);

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
  TextEditingController _telefon = TextEditingController();
  TextEditingController _adSoyad = TextEditingController();
  TextEditingController _mesaj = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Text("TEKNİK DESTEK",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Ad Soyad',
                          ),
                          controller: _adSoyad,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'E-posta Adresi',
                          ),
                          controller: _email,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Telefon Numarası',
                          ),
                          controller: _telefon,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Projenin Detayları',
                          ),
                          controller: _mesaj,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: ElevatedButton(
                            onPressed: () async {
                              // Validate will return true if the form is valid, or false if
                              // the form is invalid.
                              if (_formKey.currentState!.validate()) {
                                //await DataSource().getTasarimModel(_email.value.text,_telefon.value.text,_adSoyad.value.text,_mesaj.value.text);

                                _email.clear();
                                _telefon.clear();
                                _adSoyad.clear();
                                _mesaj.clear();
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
