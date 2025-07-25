import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_mvvm/home_view_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer(
        builder: (context, ref, child) {
          final homeState = ref.watch(homeViewModelProvider);
          return Column(
            children: [
              Text('name : ${homeState.user?.name}'),
              Text('age : ${homeState.user?.age}'),
              ElevatedButton(
                onPressed: () {
                  final viewModel = ref.read(homeViewModelProvider.notifier);
                  viewModel.getUser();
                },
                child: Text('데이터 가져오기'),
              )
            ],
          );
        },
      ),
    );
  }
}
