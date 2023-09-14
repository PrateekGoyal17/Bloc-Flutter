import 'package:bloc_flutter/cubit/input_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputCubit extends Cubit<InputState>{
  List<String> nameList  = [];
  List<String> phoneList = [];
  InputCubit():super(InputState());

  addInputField(String name, String phone){
    nameList.add(name);
    phoneList.add(phone);
    emit(InputState.init(nameList, phoneList));
  }
}