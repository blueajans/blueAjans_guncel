import 'package:flutter/material.dart';

Card buildTasarimYazilimSecenek(String resim, String kategori_adi) {
  return Card(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/${resim}.jpeg",width: 100,height: 80,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(kategori_adi),
          ),
          Icon(Icons.arrow_forward_ios_outlined),
        ],
      )
  );
}