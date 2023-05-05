import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easystyle/UI/homePage.dart';
import 'package:flutter/material.dart';
import 'hotel/hotel.dart';

class BottomNavBar extends StatefulWidget {
  final index;
  const BottomNavBar({Key? key, this.index}) : super(key: key);
  @override
  State<BottomNavBar> createState() => _BottomNavBarState(index);
}

class _BottomNavBarState extends State<BottomNavBar> {
  final _index;
  _BottomNavBarState(this._index);
   int? pageIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: AdaptiveTheme.of(context).mode.isLight==true ? Colors.white : AdaptiveTheme.of(context).mode.isDark==true ? Colors.black54 : Theme.of(context).backgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
              Navigator.push(context,MaterialPageRoute(
                  builder: (context)=> const HomePage()
              ));
            },
            icon: pageIndex == 0
                ? const Icon(
              Icons.home_filled,
              //color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.home_outlined,
              //color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
              Navigator.push(context,MaterialPageRoute(
                  builder: (context)=> Travel()
              ));
            },
            icon: pageIndex == 1
                ? const Icon(
              Icons.flight_takeoff,
              //color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.flight_land,
              //color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
              Navigator.push(context,MaterialPageRoute(
                  builder: (context)=> Hotel()
              ));
            },
            icon: pageIndex == 2
                ? const Icon(
              Icons.hotel,
              //color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.hotel_outlined,
              //color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
              Navigator.push(context,MaterialPageRoute(
                  builder: (context)=> Spa()
              ));
            },
            icon: pageIndex == 3
                ?  const Icon(
              Icons.spa,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.spa_outlined,
              //color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
