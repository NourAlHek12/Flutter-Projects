import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:registrationpage/Controller/LoginController.dart';
import 'package:registrationpage/Routes/AppRoute.dart';


class Login extends GetView<LoginController> {
  const Login({super.key});



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("Login Page")),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Email"),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder()
                    ),
                    controller: controller.email,
                  ),
                  SizedBox(height: 10,),
                  Text("Password"),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder()
                    ),
                    controller: controller.password,
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: ElevatedButton(
                        onPressed: (){
                          controller.login();
                        },
                        child:Text('Login')),
                  ),
                  Center(
                    child: ElevatedButton(
                        onPressed: (){
                          Get.toNamed(AppRoute.register);
                        },
                        child:Text('Register')),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}