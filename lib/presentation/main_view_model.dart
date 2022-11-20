import 'package:get/get.dart';


class MainViewModel extends GetxController {
  RxInt count = 0.obs;

  RxInt increment() {
    count++;
    return count;
  }
}
