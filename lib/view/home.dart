import 'package:flip_coin/controller/coin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final CoinController coinController = Get.put(CoinController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 137, 70, 70),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  coinController.coinFace.value,
                  style: const TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  coinController.flipCoin();
                },
                child: const Text('Flip!!!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
