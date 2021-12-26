import 'package:flutter/material.dart';


Container buildSecenek(BuildContext context,String fotograf) {
  return Container(

    width: MediaQuery.of(context).size.width,
    height: 170,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
        image: AssetImage("assets/${fotograf}.jpeg"),
        fit: BoxFit.cover,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 30,),
        ),
      ],
    ),
  );
}
