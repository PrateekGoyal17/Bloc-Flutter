// import 'package:bloc_flutter/bloc/input_bloc.dart';
import 'package:bloc_flutter/cubit/input_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late String name;
    late String phone;
    return Column( children: [
       Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Text(
              "Name -",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(width: MediaQuery.of(context).size.width*0.009),
            Expanded(
                child: TextField(
                  onChanged: (val) => name = val,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
            )),
          ],
        ),
      ),
       Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Text(
              "Phone -",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(width: MediaQuery.of(context).size.width*0.009),
            Expanded(
                child: TextField(
                  onChanged: (val) => phone =val,
                  keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
            )),
          ],
        ),
      ),
      ElevatedButton(onPressed: () {
        BlocProvider.of<InputCubit>(context).addInputField(name,phone);
      }, child: const Text('Add using Cubit')),
      // ElevatedButton(onPressed: () {
      //   BlocProvider.of<InputBloc>(context).add(AddInputField(name,phone));
      // }, child: const Text('Add using BLOC')),
    ]);
  }
}
