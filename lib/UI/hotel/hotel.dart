import 'package:easystyle/UI/appBarView.dart';
import 'package:easystyle/UI/hotel/hotelView.dart';
import 'package:flutter/material.dart';
import 'package:easystyle/utilities/imageSliderWidget.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../utilities/api/constant.dart';
import '../../utilities/calendar_popup_view.dart';

class Hotel extends StatelessWidget {
   Hotel({Key? key}) : super(key: key);
   int pageIndex = 0;
   List<dynamic> images = [
     ['https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg',
       'https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg',
       'https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg',
       'https://images.pexels.com/photos/1579253/pexels-photo-1579253.jpeg',
       'https://images.pexels.com/photos/1457847/pexels-photo-1457847.jpeg',
       'https://images.pexels.com/photos/1743231/pexels-photo-1743231.jpeg',],
     ['https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg',
       'https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg',
       'https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg',
       'https://images.pexels.com/photos/1579253/pexels-photo-1579253.jpeg',
       'https://images.pexels.com/photos/1457847/pexels-photo-1457847.jpeg',
       'https://images.pexels.com/photos/1743231/pexels-photo-1743231.jpeg',],
     ['https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg',
       'https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg',
       'https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg',
       'https://images.pexels.com/photos/1579253/pexels-photo-1579253.jpeg',
       'https://images.pexels.com/photos/1457847/pexels-photo-1457847.jpeg',
       'https://images.pexels.com/photos/1743231/pexels-photo-1743231.jpeg',],
     ['https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg',
       'https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg',
       'https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg',
       'https://images.pexels.com/photos/1579253/pexels-photo-1579253.jpeg',
       'https://images.pexels.com/photos/1457847/pexels-photo-1457847.jpeg',
       'https://images.pexels.com/photos/1743231/pexels-photo-1743231.jpeg',],
     ['https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg',
       'https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg',
       'https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg',
       'https://images.pexels.com/photos/1579253/pexels-photo-1579253.jpeg',
       'https://images.pexels.com/photos/1457847/pexels-photo-1457847.jpeg',
       'https://images.pexels.com/photos/1743231/pexels-photo-1743231.jpeg',],
     ['https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg',
       'https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg',
       'https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg',
       'https://images.pexels.com/photos/1579253/pexels-photo-1579253.jpeg',
       'https://images.pexels.com/photos/1457847/pexels-photo-1457847.jpeg',
       'https://images.pexels.com/photos/1743231/pexels-photo-1743231.jpeg',],
  ];
  List title = [
    'Standard Room',
    'Luxury Room',
    'Deluxe Room',
    'Single Room',
    'Double Room',
    'Twin Room'
  ];
   List hotel = [
     'Sheraton',
     'Radisson Blu',
     'Double Tree',
     'Chase',
     'Topview',
     'Bafra'
   ];
  List moneyRange = [
    'Room Rate From ${N}50,000',
    'Room Rate From ${N}60,000',
    'Room Rate From ${N}45,000',
    'Room Rate From ${N}60,000',
    'Room Rate From ${N}25,000',
    'Room Rate From ${N}60,000',
  ];
   DateTime startDate = DateTime.now();
   DateTime endDate = DateTime.now().add(const Duration(days: 5));

   @override
  Widget build(BuildContext context) {
    final isLandscape = MediaQuery.of(context).orientation ==
        Orientation.landscape;
    return Scaffold(
      appBar: AppBarView(title: 'Easy Life Style',),
      //bottomNavigationBar: BottomNavBar(index: pageIndex,),
      body: Column(
        children: <Widget>[
          //getSearchBarUI(context),
          //getTimeDateUI(context),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this would produce 2 rows.
                crossAxisCount: isLandscape == true ? 2:1,
                padding: const EdgeInsets.all(5),
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
                // Generate 100 Widgets that display their index in the List
                children: List.generate(images.length, (index) {
                  return _buildCard(context,index,images,isLandscape);
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildCard(BuildContext context,i,images,isLandScape){
    void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
      // TODO: implement your code here
    }
    return Card(
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
              height: isLandScape==true?230:250,
              constraints: BoxConstraints(
                  minHeight: isLandScape==true?200:150
              ),
              child: ImageSliderWidget(
                imageUrls: images[i],
                imageBorderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: 20,
                    //   child: SfDateRangePicker(
                    //     showTodayButton: true,
                    //     enableMultiView: true,
                    //     selectionRadius: 10,
                    //     onSelectionChanged: _onSelectionChanged,
                    //     selectionMode: DateRangePickerSelectionMode.range,
                    //   ),
                    // ),
                    Text(
                      '${moneyRange[i]}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.w300,fontSize: 10),
                    ),
                    Row(
                      children: [
                        Text(
                          '${hotel[i]}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.blue[800],
                              fontWeight: FontWeight.w500,fontSize: 14),
                        ),
                        const SizedBox(width: 5,),
                        Text(
                          '${title[i]}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w400,fontSize: 11),
                        ),
                        Expanded(child: Container()),
                        IconButton(
                            onPressed: (){
                              dynamic data= [hotel[i],images[i]];
                              Navigator.push(context,MaterialPageRoute(
                                  builder: (context)=> const HotelView(),
                                  settings: RouteSettings(
                                      arguments: data
                                  )
                              ));
                            },
                            icon: const Icon(Icons.arrow_circle_right_outlined, size: 32,)
                        )
                      ],
                    ),
                  ]),
            ),
          ],
        ));
  }
  Widget getSearchBarUI(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
       child: Row(
         children: <Widget>[
           Expanded(
             child: Padding(
               padding: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
               child: Container(
                 decoration: BoxDecoration(
                   color: Theme.of(context).primaryColor,
                   borderRadius: const BorderRadius.all(
                     Radius.circular(38.0),
                   ),
                   boxShadow: <BoxShadow>[
                     BoxShadow(
                         color: Colors.grey.withOpacity(0.2),
                         offset: const Offset(0, 2),
                         blurRadius: 8.0),
                   ],
                 ),
                 child: Padding(
                   padding: const EdgeInsets.only(
                       left: 16, right: 16, top: 4, bottom: 4),
                   child: TextField(
                     onChanged: (String txt) {},
                     style: const TextStyle(
                       fontSize: 18,
                     ),
                     cursorColor: Theme.of(context).primaryColor,
                     decoration: const InputDecoration(
                       border: InputBorder.none,
                       hintText: 'Abuja...',
                     ),
                   ),
                 ),
               ),
             ),
           ),
           Container(
             decoration: BoxDecoration(
               color: Theme.of(context).primaryColor,
               borderRadius: const BorderRadius.all(
                 Radius.circular(38.0),
               ),
               boxShadow: <BoxShadow>[
                 BoxShadow(
                     color: Colors.grey.withOpacity(0.4),
                     offset: const Offset(0, 2),
                     blurRadius: 8.0),
               ],
             ),
             child: Material(
               color: Colors.transparent,
               child: InkWell(
                 borderRadius: const BorderRadius.all(
                   Radius.circular(32.0),
                 ),
                 onTap: () {
                   FocusScope.of(context).requestFocus(FocusNode());
                 },
                 child: Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Icon(Icons.search,
                       size: 20,
                       color: Theme.of(context).primaryColor),
                 ),
               ),
             ),
           ),
         ],
       ),
     );
   }
  Widget getTimeDateUI(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.only(left: 18, bottom: 16),
       child: Row(
         children: <Widget>[
           Expanded(
             child: Row(
               children: <Widget>[
                 Material(
                   color: Colors.transparent,
                   child: InkWell(
                     focusColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     hoverColor: Colors.transparent,
                     splashColor: Colors.grey.withOpacity(0.2),
                     borderRadius: const BorderRadius.all(
                       Radius.circular(4.0),
                     ),
                     onTap: () {
                       FocusScope.of(context).requestFocus(FocusNode());
                       // setState(() {
                       //   isDatePopupOpen = true;
                       // });
                       showDemoDialog(context: context);
                     },
                     child: Padding(
                       padding: const EdgeInsets.only(
                           left: 8, right: 8, top: 4, bottom: 4),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                           Text(
                             'Choose date',
                             style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 16,
                                 color: Theme.of(context).primaryColor),
                           ),
                           const SizedBox(
                             height: 8,
                           ),
                           Text(
                             '${DateFormat("dd, MMM").format(startDate)} - ${DateFormat("dd, MMM").format(endDate)}',
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 14,
                               color: Theme.of(context).primaryColor
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(right: 8),
             child: Container(
               width: 1,
               height: 42,
               color: Theme.of(context).primaryColor,
             ),
           ),
           Expanded(
             child: Row(
               children: <Widget>[
                 Material(
                   color: Colors.transparent,
                   child: InkWell(
                     focusColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     hoverColor: Colors.transparent,
                     splashColor: Colors.grey.withOpacity(0.2),
                     borderRadius: const BorderRadius.all(
                       Radius.circular(4.0),
                     ),
                     onTap: () {
                       FocusScope.of(context).requestFocus(FocusNode());
                     },
                     child: Padding(
                       padding: const EdgeInsets.only(
                           left: 8, right: 8, top: 4, bottom: 4),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                           Text(
                             'Number of Rooms',
                             style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 14,
                                 color: Theme.of(context).primaryColor),
                           ),
                           const SizedBox(
                             height: 8,
                           ),
                            Text(
                             '1 Room - 2 Adults',
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 14,
                               color: Theme.of(context).primaryColor
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ],
       ),
     );
   }
   void showDemoDialog({BuildContext? context}) {
     showDialog<dynamic>(
       context: context!,
       builder: (BuildContext context) => CalendarPopupView(
         barrierDismissible: true,
         minimumDate: DateTime.now(),
         //  maximumDate: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 10),
         initialEndDate: endDate,
         initialStartDate: startDate,
         onApplyClick: (DateTime startData, DateTime endData) {
           // setState(() {
           //   startDate = startData;
           //   endDate = endData;
           // });
         },
         onCancelClick: () {},
       ),
     );
   }
}