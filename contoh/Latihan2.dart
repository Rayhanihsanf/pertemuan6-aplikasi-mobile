//ignore_for_file: avoid_print
class Mahasiswa{
  Mahasiswa ({
    required this.Name,
    required this.Nim,
    required this.Prodi});
  final String Name;
  final String Nim;
  final String Prodi;

  String Perkenalan(){
    return ("Halo, Saya $Name, $Nim, $Prodi ");
  }


}
void main(){
  final ujang = Mahasiswa(Name : 'ujang', Nim : '110929777', Prodi : 'Bisnis Digital');
  print (ujang.Perkenalan);

}