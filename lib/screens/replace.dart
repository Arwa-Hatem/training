import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubits/cubit/change_cubit.dart';

class replace extends StatelessWidget {
  const replace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<ChangeCubit, ChangeState>(builder: (context, state) {
              if (state is Showtext) {
                return Text("Hello we are ITI");
              } else if (state is Showimage) {
                return SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(
                      "https://pub.dev/packages/bloc/versions/8.1.2/gen-res/gen/190x190/logo.webp"),
                );
              } else if (state is Showcircle) {
                return Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 117, 76, 121)),
                );
              } else {
                return Text("no data");
              }
            }),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ChangeCubit>().showtext();
              },
              child: Text("show text"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 147, 107, 144)),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ChangeCubit>().showimage();
              },
              child: Text("show image"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 147, 107, 144)),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ChangeCubit>().showcircle();
              },
              child: Text("show circle"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 147, 107, 144)),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ChangeCubit>().reset();
              },
              child: Text("Reset"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 147, 107, 144)),
            )
          ],
        ),
      ),
    );
  }
}
