import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easystyle/utilities/api/merchantId.dart';
import 'package:flutter/material.dart';
import 'package:easystyle/utilities/api/createBarCode.dart';

Future payWithENaira(BuildContext context){
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(20.0)), //this right here
          child: SizedBox(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pay with ENaira:',textAlign: TextAlign.center,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),),
                  const Divider(thickness: 2,),
                  const TextField(
                    decoration: InputDecoration(
                      //prefixIcon: Icon(Icons.exit_to_app),
                        border: InputBorder.none,
                        hintText: ''),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(2,2),
                            blurRadius: 1,
                            spreadRadius: 1
                        ),],
                      color: AdaptiveTheme.of(context).mode.isLight==true ? Colors.white70 : AdaptiveTheme.of(context).mode.isDark==true ? Colors.grey.shade700 : Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        createBarCode(context);

                      },
                      child: Text(
                        'use Barcode',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(2,2),
                          blurRadius: 1,
                          spreadRadius: 1,
                        ),],
                      color: AdaptiveTheme.of(context).mode.isLight==true ? Colors.white70 : AdaptiveTheme.of(context).mode.isDark==true ? Colors.grey.shade700 : Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 50,
                    child: Center(child: TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                        merchantId(context);
                      },
                      child: Text('use Merchant ID',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor),
                      ),
                    )),
                  ),
                  Expanded(child: Container()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(
                      //   width: 100.0,
                      //   child: ElevatedButton(
                      //     style: ElevatedButton.styleFrom(primary: Colors.green),
                      //     onPressed: () async {
                      //       Navigator.pop(context);
                      //       //await _deleteUserProfile();
                      //     },
                      //     child: const Text(
                      //       "Delete",
                      //       style: TextStyle(color: Colors.white),
                      //     ),
                      //     //color: Colors.green,
                      //   ),
                      // ),
                      SizedBox(
                        width: 100.0,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.cancel,size: 32,color: Colors.deepOrangeAccent,),
                          //color: Colors.redAccent,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      });
}