//import 'dart:convert';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_session/flutter_session.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter/foundation.dart' show TargetPlatform;

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}
//
// Future<DeleteProfile> deleteProfile(dynamic userId,int agentId) async{
//   var url = Uri.parse(apiUrl+"/deleteprofile");
//   final http.Response response = await http.put(url, body:json.encode({
//     "userId":userId,
//     "agent_id":agentId
//   }),headers:{
//     "x-api-key":xApiKey
//   });
//   if(response.statusCode == 200){
//     final String responseString = response.body;
//     return deleteProfileFromJson(responseString);
//   }else if(response.statusCode == 403){
//     final String responseString = response.body;
//     return deleteProfileFromJson(responseString);
//   }else{
//     throw new Exception("Error while fetching data ");
//   }
// }

class _SettingsPageState extends State<SettingsPage> {
  //DeleteProfile? _dProfile;
  // bool _load = false;
  // String? message='';
  // Future _deleteUserProfile() async {
  //   dynamic userId = await FlutterSession().get('userId');
  //   final DeleteProfile dProfile = await deleteProfile(userId,agentId);
  //   setState(() {
  //     _dProfile = dProfile;
  //   });
  //   if(_dProfile?.status == 'success'){
  //     setState(() {
  //       _load = true;
  //       message = _dProfile?.message;
  //     });
  //   }else if(_dProfile?.status=='error'){
  //     setState(() {
  //       _load = false;
  //       message = _dProfile?.message;
  //     });
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    //var platform = Theme.of(context).platform;
    // platform==TargetPlatform.android?
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 30,left: 20,right:20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back),
              ),
              const SizedBox(height: 30,),
              Row(
                children: [
                  IconButton(
                    icon:  Icon(AdaptiveTheme.of(context).mode.isDark==true ? Icons.dark_mode : AdaptiveTheme.of(context).mode.isLight==true ? Icons.light_mode : Icons.devices_rounded),
                    onPressed: () async {
                      AdaptiveTheme.of(context).toggleThemeMode();
                      setState(() {});
                    },
                  ),
                  // Switch(
                  //     value: _light,
                  //     onChanged: (state){
                  //       setState(() {
                  //         _light = state;
                  //         _setThemes(_light);
                  //       });
                  //     }),
                  const SizedBox(width: 50,),
                  AdaptiveTheme.of(context).mode.isLight==true ? const Text('Light Theme Mode'): AdaptiveTheme.of(context).mode.isDark==true ? const Text('Dark Theme Mode') : const Text('System Theme Mode'),
                ],
              ),
              const Divider(thickness: 2.0,height: 5,),
              // Row(
              //   children: [
              //     IconButton(
              //       icon:  const Icon(Icons.wb_cloudy),
              //       onPressed: () {
              //
              //       },
              //     ),
              //     const SizedBox(width: 50,),
              //     const Text('Create Virtual Account'),
              //   ],
              // ),
              //const Divider(thickness: 2.0,height: 5,),
              Row(
                children: [
                  IconButton(
                    icon:  const Icon(Icons.delete_forever),
                    onPressed: () async {
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
                                      Text('Are you sure?',textAlign: TextAlign.center,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),),
                                      const Divider(thickness: 2,),
                                      const TextField(
                                        decoration: InputDecoration(
                                          //prefixIcon: Icon(Icons.exit_to_app),
                                            border: InputBorder.none,
                                            hintText: 'You want to delete your profile?'),
                                        textAlign: TextAlign.center,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 100.0,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(primary: Colors.green),
                                              onPressed: () async {
                                                Navigator.pop(context);
                                                //await _deleteUserProfile();
                                              },
                                              child: const Text(
                                                "Delete",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                              //color: Colors.green,
                                            ),
                                          ),
                                          const SizedBox(width: 15,),
                                          SizedBox(
                                            width: 100.0,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text(
                                                "Cancel",
                                                style: TextStyle(color: Colors.white),
                                              ),
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

                    },
                  ),
                  const SizedBox(width: 50,),
                  const Text('Delete Profile'),
                ],
              ),
              const Divider(thickness: 2.0,height: 5,),
              //_load == false?SizedBox():Center(child: Text('$message',style: TextStyle(color: Theme.of(context).primaryColor),)),
            ],
          ),
        ),
      ),
    );
  }
}
