import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

Future createBarCode(BuildContext context){
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(20.0)), //this right here
          child: SizedBox(
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('eNaira Barcode:',textAlign: TextAlign.center,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),),
                  const Divider(thickness: 2,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      //color: Colors.grey.shade700,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(child: QrImage(
                      data: 'status:success|UID:234|TID:4635|amount:40000|Room:Standard|Period:12-08-2022/22-08-2022',
                      version: QrVersions.auto,
                      size: 300,
                      gapless: false,
                      //embeddedImage: const AssetImage('assets/images/my_embedded_image.png'),
                      // embeddedImageStyle: QrEmbeddedImageStyle(
                      //   size: const Size(80, 80),
                      // ),
                      errorStateBuilder: (cxt, err) {
                        return const Center(
                          child: Text(
                            "Uh oh! Something went wrong...",
                            textAlign: TextAlign.center,
                          ),
                        );
                      },
                    )),
                  ),
                  const SizedBox(height: 5,),
                  const Center(child: Text("Scan Barcode to pay")),
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