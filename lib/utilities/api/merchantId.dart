import 'package:flutter/material.dart';

Future merchantId(BuildContext context){
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(20.0)), //this right here
          child: SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('eNaira Merchant ID:',textAlign: TextAlign.center,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),),
                  const Divider(thickness: 2,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      //color: Colors.grey.shade700,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(child: Text(
                        'QERFWTSFWA',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600
                      ),
                    ),),
                  ),
                  const SizedBox(height: 5,),
                  const Center(child: Text("Enter Merchant ID to pay")),
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