//ignore_for_file: avoid_print
class Burung {
  Burung (this.Name);
  final String Name;

  void bersuara(){
    print ('$Name kicau');
  }
}

void main(){
  final burung1 = Burung('Raybu');
  final burung2 = Burung('Raychu');
  print(burung1.Name);
  print(burung2.Name);
}