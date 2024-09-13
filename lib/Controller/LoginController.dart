import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:registrationpage/Core/Network/DioClient.dart';
import 'package:registrationpage/Core/showSuccessDialog.dart';
import 'package:registrationpage/Model/User.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Routes/AppRoute.dart';

class LoginController extends GetxController{

  TextEditingController email = TextEditingController();
  TextEditingController password= TextEditingController();

  late SharedPreferences prefs;

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    prefs = await SharedPreferences.getInstance();

    if(prefs.getString('token') != null)
      {
        Get.offNamed(AppRoute.home);
      }
  }

  void login() async{

    User user = User(email: email.value.text, password: password.value.text);
    String request_body = user.toJson();
    var post = await DioClient().getInstance().post("/login", data: request_body);
    if(post.statusCode == 200)
      {
        showSuccessDialog(Get.context!, "Success", "User logged in successfully", (){
          print(post.data);
          prefs.setString("token", post.data['token']);
          Get.offNamed(AppRoute.home);
        });
      }
  }
}