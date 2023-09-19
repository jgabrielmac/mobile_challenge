import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextPage extends GetView {
  const NextPage({super.key});

  @override
  Widget build(context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Champions Page"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Está no caminho,${'\n'}jovem Padawan!',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 21),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text("Voltar"),
                  onPressed: () => Get.back(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
