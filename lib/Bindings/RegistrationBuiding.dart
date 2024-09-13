import 'package:get/get.dart';
import 'package:registrationpage/Controller/RegistrationController.dart';

class RegistrationBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => RegistrationController());
  }

}