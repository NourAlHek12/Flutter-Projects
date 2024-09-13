import 'package:get/get.dart';
import 'package:registrationpage/Controller/HomeController.dart';


class HomeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeController());
  }

}