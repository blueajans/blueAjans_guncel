import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';

class FloatActionButton extends StatelessWidget {
  const FloatActionButton({Key? key}) : super(key: key);

  void customLaunch(command) async{
    if(await canLaunch(command))
    {
      await launch(command);
    }
    else{
      print("$command bulunamadı");
    }
  }// mail ve arama fonksiyonları



  @override
  Widget build(BuildContext context) {
    return SpeedDial( //Speed dial menu
      marginBottom: 10, //margin bottom
      icon: Icons.menu, //icon on Floating action button
      activeIcon: Icons.close, //icon when menu is expanded on button
      backgroundColor: Colors.blue, //background color of button
      foregroundColor: Colors.white, //font color, icon color in button
      activeBackgroundColor: Colors.blue, //background color when menu is expanded
      activeForegroundColor: Colors.white,
      buttonSize: 56.0, //button size
      visible: true,
      closeManually: false,
      curve: Curves.bounceIn,
      overlayColor: Colors.black,
      overlayOpacity: 0.5, //action when menu closes

      elevation: 8.0, //shadow elevation of button
      shape: CircleBorder(), //shape of button

      children: [
        SpeedDialChild( //speed dial child
          child: Icon(Icons.phone),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          label: 'Ara',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () => customLaunch("tel:03123942583"),

        ),
        SpeedDialChild(
          child: Icon(Icons.mail_outline),
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
          label: 'Mail İle İletişim',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () => customLaunch("mailto:info@blueajans.com.tr"),
        ),

        //add more menu item childs here
      ],
    );
  }
}
