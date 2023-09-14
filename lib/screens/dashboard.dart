import 'package:bloc_flutter/cubit/input_cubit.dart';
import 'package:bloc_flutter/cubit/input_state.dart';
import 'package:bloc_flutter/widgets/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // late List<String> textFieldnameList = [];
    // late List<String> textFieldphoneList = [];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const InputWidget(),
            BlocBuilder<InputCubit, InputState>(
              builder: (context, printTextField) {
                return Expanded(
                  child: ListView.builder(
                      itemCount: printTextField.size(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Text("Name is ${printTextField.name[index]}"),
                            Text("Phone no is ${printTextField.phone[index]}"),
                          ],
                        );
                      }),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
