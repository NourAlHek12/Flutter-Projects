import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:registrationpage/Core/Network/DioClient.dart';
import 'package:registrationpage/Routes/AppRoute.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Model/Music.dart';


class HomeController extends GetxController{

  late SharedPreferences prefs;

  var songs = <Music>[].obs;

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    _load_Shared_Preferences();
    getMusic();
  }

  void _load_Shared_Preferences() async{
    prefs = await SharedPreferences.getInstance();
  }

  void getMusic() async{
    var request = await DioClient().getInstance().get('/music');
    if (request.statusCode == 200){
      var request_data = request.data as List;
      songs.value = request_data.map((music) => Music.fromjson(music)).toList();
      print("Fetched Music List ${songs.length} items");
    }
  }


  void logout() async
  {
    prefs.remove('token');
    Get.offNamed(AppRoute.login);
  }


}