import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_challenge/controller.dart';
import 'package:mobile_challenge/next.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(context) {
    Get.lazyPut(() => HomeController());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Seja Bem-vindo',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Obx(
                () => Text(
                  'Seu poder de luta: ${controller.count.value}',
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 36, bottom: Get.height / 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(
                      heroTag: 'diminuir',
                      onPressed: () => controller.decrement(),
                      child: const Icon(Icons.remove),
                    ),
                    FloatingActionButton(
                      heroTag: 'aumentar',
                      onPressed: () {
                        controller.increment();
                        if (controller.count.value == 8) {
                          const snackBar = SnackBar(
                            content: Text(
                              'Mais mil, Kakaroto!',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                              strutStyle: StrutStyle(height: 3.3),
                              textAlign: TextAlign.center,
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                child: const Text("Ir para página dos campeões"),
                onPressed: () => Get.to(const NextPage()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
