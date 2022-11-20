import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/presentation/main_view_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Get.put(MainViewModel());
    return Scaffold(
      appBar: AppBar(
        title: const Text('getX'),
      ),
      body: Center(
        child: Obx(()=> Text('${viewModel.count}')),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        viewModel.increment();
      },
      child: const Icon(Icons.add),
      ),
    );
  }
}