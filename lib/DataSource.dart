import 'dart:convert';

import 'package:http/http.dart' as http;

class DataSource{
   var urlContactFormUrl = Uri.parse("https://www.blueajans.com.tr/post/contactform2");
   var projeTakipURL = Uri.parse("https://www.blueajans.com.tr/api/projetakip");

  Future<void> getTasarimModel(var eposta, var telefon, var adSoyad, var mesaj)async {
 Map body = {
   "eposta": eposta,
   "telefon":telefon,
   "adsoyad":adSoyad,
   "mesaj":mesaj
 };
 print(body);
 await http.post(urlContactFormUrl,body: json.encode(body));
  }

  Future<void> takipKoduGonder(var takipKodu)async {
    Map body = {
      "kod":takipKodu
    };
    var response = await http.post(projeTakipURL,body: json.encode(body));
    var decode = jsonDecode(response.body);
  }
}