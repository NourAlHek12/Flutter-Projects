import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:registrationpage/Controller/RegistrationController.dart';


class Registration extends GetView<RegistrationController> {
  const Registration({super.key});



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("Registration Page")),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Name"),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder()
                  ),
                  controller: controller.name,
                ),
                SizedBox(height: 10,),
                Text("Email"),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder()
                  ),
                  controller: controller.email,
                ),
                SizedBox(height: 10,),
                Text("Phone"),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder()
                  ),
                  controller: controller.phone,
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
                        controller.register();
                      },
                      child:Text("Register")),
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: (){
                        Get.back();
                      },
                      child:Text("Back")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}