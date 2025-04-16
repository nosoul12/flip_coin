import 'dart:math';
import 'package:get/get.dart';

class CoinController extends GetxController {
  // Observable variable for coin face
  var coinFace = 'Heads'.obs;

  void flipCoin() {
    coinFace.value = Random().nextBool() ? 'Heads' : 'Tails';
  }
}
