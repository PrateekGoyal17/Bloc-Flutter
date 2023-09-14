class InputState{
  late List<String> name;
  late List<String> phone;
  
  InputState(){
    name = [];
    phone = [];
  }
  InputState.init(this.name, this.phone);

  int size(){
    return name.length;
  }
}