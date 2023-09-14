import 'package:bloc_flutter/cubit/input_cubit.dart';
import 'package:bloc_flutter/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//
void main() {
  runApp(MaterialApp(
    home: BlocProvider(
      create: (_) => InputCubit(),
      child: Dashboard(),
    ),
  ));
}
