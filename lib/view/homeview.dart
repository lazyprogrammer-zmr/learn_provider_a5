import 'package:flutter/material.dart';
import 'package:learn_block_pattern/controller/home_controller.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final con = context.read<HomeController>();
    final wh = context.watch<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Crud"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${con.count}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: con.inncrement,
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: con.decrement,
                child: const Icon(Icons.minimize_outlined),
              ),
            ],
          )
        ],
      ),
    );
  }
}
