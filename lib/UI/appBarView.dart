import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easystyle/UI/settingsPage.dart';
import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget with PreferredSizeWidget{
   AppBarView({Key? key,this.title}) : super(key: key);
  String? title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor
      ),
      toolbarHeight: 75,
      actions: <Widget>[
        IconButton(
            tooltip: 'Settings',
            icon: Icon(Icons.settings,size: 25,
                color:Theme.of(context).primaryColor
            ),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(
                  builder: (context)=>const SettingsPage()
              ));
            })
      ],
      title: Text(
        "$title",
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
      backgroundColor: AdaptiveTheme.of(context).mode.isLight==true ? Colors.white : AdaptiveTheme.of(context).mode.isDark==true ? Colors.black54 : Colors.white,
      elevation: 0,
    );
  }
   @override
   // TODO: implement preferredSize
   Size get preferredSize => const Size.fromHeight(75);
}
