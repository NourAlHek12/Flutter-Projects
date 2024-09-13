import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:registrationpage/Controller/HomeController.dart';
import 'package:registrationpage/Routes/AppRoute.dart';


class Home extends StatelessWidget {
  const Home({super.key});



  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return GetX<HomeController>(
        builder:(_) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme
                  .of(context)
                  .colorScheme
                  .inversePrimary,
              title: Center(child: Text("Home")),
            ),
            body: ListView.builder(
              itemCount: controller.songs.length,
                itemBuilder: (context,index) {
                  var music = controller.songs[index];
                  return Card(
                    child: ListTile(
                      leading: Image.network(music.coverPhoto),
                      title: Text(music.title),
                      subtitle: Text('${music.artist} . ${music.views}'),
                    ),
                  );
                }
                ),
            drawer: Drawer(
              backgroundColor: Colors.purple,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        controller.logout();
                      },
                      child: Text("Logout")
                  )
                ],
              ),
            ),
          );
        }
    );

      }

  }
