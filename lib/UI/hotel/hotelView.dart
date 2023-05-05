import 'package:easystyle/UI/appBarView.dart';
import 'package:easystyle/utilities/api/payWithEnaira.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../utilities/imageSliderWidget.dart';

class HotelView extends StatefulWidget {
  const HotelView({Key? key}) : super(key: key);

  @override
  State<HotelView> createState() => _HotelViewState();
}

class _HotelViewState extends State<HotelView> {

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    // TODO: implement your code here
  }
  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)?.settings.arguments;
    List images = [data[1]];
    String hotel = data[0];
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: AppBarView(
        title: 'Available Hotels',
      ),
      //bottomNavigationBar: const BottomNavBar(),
      body: Column(
        children: <Widget>[
          //getSearchBarUI(context),
          //getTimeDateUI(context),
          Expanded(
            child: Stack(children: [
              // SfDateRangePicker(
              //   showTodayButton: true,
              //   enableMultiView: true,
              //   selectionRadius: 10,
              //   onSelectionChanged: _onSelectionChanged,
              //   selectionMode: DateRangePickerSelectionMode.multiRange,
              // ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: TextButton(
                      onPressed: (){
                        showDateRangePicker(firstDate:DateTime(2022), context: context, lastDate: DateTime(2025));
                      },
                      child: const Text('select date',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                  ),
                  const Text('|'),
                  const Text('  1 Room - 2 Adults',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      )),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this would produce 2 rows.
                  crossAxisCount: isLandscape == true ? 2 : 1,
                  padding: const EdgeInsets.all(5),
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 3,
                  // Generate 100 Widgets that display their index in the List
                  children: List.generate(images.length, (index) {
                    return _buildCard(context, index,hotel, images, isLandscape);
                  }),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, i,hotel, images, isLandScape) {

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
              constraints:
                  BoxConstraints(minHeight: isLandScape == true ? 200 : 150),
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
                    const Text(
                      'NGN 40,000 per Night',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 8),
                    ),
                    Row(
                      children: [
                        Text(
                          '$hotel',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.blue[800],
                              fontWeight: FontWeight.w800,
                              fontSize: 14),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Standard',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w400,
                              fontSize: 11),
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: [
                            const Text('Make Payment ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11),
                            ),
                            IconButton(
                                onPressed: () async {
                                  payWithENaira(context);
                                },
                                icon: const Icon(
                                  Icons.payments_outlined,
                                  size: 32,
                                )),
                          ],
                        )
                      ],
                    ),
                  ]),
            ),
          ],
        ));
  }
}
