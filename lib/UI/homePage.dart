import 'package:easystyle/UI/appBarView.dart';
import 'package:easystyle/UI/bottomNavBar.dart';
import 'package:easystyle/UI/navDrawer.dart';
import 'package:flutter/material.dart';

import 'hotel/hotel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
     Home(),
     Travel(),
     Spa(),
     Hotel(),
     Gym(),
     Movies(),
     Food(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView(title: 'Easy Life Style',),
      drawer: NavDrawer(),
      bottomNavigationBar: BottomNavBar(index: pageIndex,),
      body: pages[pageIndex],
    );
  }
}

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
  List images = [
    'images/travels.png',
    'images/spa.png',
    'images/hotel.png',
    'images/gym.jpeg',
    'images/movies.png',
    'images/food.jpeg',
  ];
   List title = [
     'Travels',
     'Spa',
     'Hotel',
     'Gym',
     'Movies',
     'Food'
   ];
   List serviceLink = [
     Travel(),
     Spa(),
     Hotel(),
     Gym(),
     Movies(),
     Food()
   ];
   List description = [
     'Travel with style with the cheapest rate',
     'Spa your way to freedom and emancipate yourself',
     'Find the best Hotel at affordable prices',
     'Select from the best Gym around',
     'Select from the best cinemas around',
     'Order from the best fast food around',
   ];

  @override
  Widget build(BuildContext context) {
    final isLandscape = MediaQuery.of(context).orientation ==
        Orientation.landscape;
    return Column(
      children: <Widget>[
        const SizedBox(height: 10,),
         Row(
           children: const [
             SizedBox(width: 10,),
             Icon(Icons.person),
             Text(' Welcome, Bello'),
           ],
         ),
         Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            child: GridView.count(
              crossAxisCount: isLandscape==true?3:2,
              padding: const EdgeInsets.all(5),
              crossAxisSpacing: 3,
              mainAxisSpacing: 3,
              children: List.generate(images.length, (index) {
                return _buildCard(context,index,isLandscape);
              }),
            ),
          ),
        ),
        const TextButton(
            onPressed: null,
            child: Text("See more..")
        ),
      ],
    );
  }
  Widget _buildCard(BuildContext context,index,isLandScape){
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(
            builder: (context)=> serviceLink[index]
        //   settings: RouteSettings(
        //   arguments: id
        // ),
        ));
      },
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          elevation: 10.0,
          margin: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //height: 200.0,
                constraints: BoxConstraints(
                  minHeight: isLandScape==true?150:100
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage("${images[index]}"), fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${title[index]}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w400,fontSize: 11),
                      ),
                      Text(
                        '${description[index]}',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 8),
                      ),
                    ]),
              ),
            ],
          )),
    );
  }
}

class Travel extends StatelessWidget {
  Travel({Key? key}) : super(key: key);
  //int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView(title: 'Easy Life Style',),
      //bottomNavigationBar: BottomNavBar(index: pageIndex,),
      body: Center(
        child: Text(
          "Travel Page",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Spa extends StatelessWidget {
  Spa({Key? key}) : super(key: key);
  //int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView(title: 'Easy Life Style',),
      //bottomNavigationBar: BottomNavBar(index: pageIndex,),
      body: Center(
        child: Text(
          "Spa Page",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Gym extends StatelessWidget {
  Gym({Key? key}) : super(key: key);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView(title: 'Easy Life Style',),
      //bottomNavigationBar: BottomNavBar(index: pageIndex,),
      body: Center(
        child: Text(
          "Gym Page",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Movies extends StatelessWidget {
   Movies({Key? key}) : super(key: key);
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView(title: 'Easy Life Style',),
      //bottomNavigationBar: BottomNavBar(index: pageIndex,),
      body: Center(
        child: Text(
          "Movie Page",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Food extends StatelessWidget {
  Food({Key? key}) : super(key: key);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView(title: 'Easy Life Style',),
      //bottomNavigationBar: BottomNavBar(index: pageIndex,),
      body: Center(
        child: Text(
          "Eatery Page",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}