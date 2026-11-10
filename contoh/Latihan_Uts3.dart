import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Rayhan',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: ProfilSaya(),
    );
  }
}

class ProfilSaya extends StatelessWidget {
  const ProfilSaya({super.key});
  final String nama = 'Rayhan Ihsan Fadhilah';
  final String nim = '1126180062';
  final String prodi = 'Teknik Informatika';
  final String role = 'Mahasiswa Global Institut';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil Rayhan Ihsan Fadhilah',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                child: Icon(Icons.person, size: 40, color: Colors.white),
                backgroundColor: Colors.grey,
              ),
              SizedBox(height: 10),
              Text(
                nama,
                style: TextStyle(
                  fontSize: 16, 
                  fontWeight: FontWeight.bold),
                ),
              Text(
                nim, 
                style: TextStyle(
                  fontSize: 14)
                  ),
              Text(
                prodi, 
                style: TextStyle(
                  fontSize: 14)
                  ),
              Text(
                role, 
                style: TextStyle(
                  fontSize: 14)
                  ),
              SizedBox(height: 15),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text('Edit'),
                icon: Icon(Icons.edit),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Data Pribadi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              Expanded(child: ListView(children: [
                 DataDiri(),
                ],
              )),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Matakuliah',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              Expanded(
                child: ListView(
                  children: [
                   Matakuliah(),
                  ],
                ),
              ),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: Duration(seconds: 2),
            content: Text('Anda bisa menambahkan matakuliah'),
            backgroundColor: Colors.deepOrange,
         ),
        );
      },
      mini: true,
      child: Icon(Icons.add, color: Colors.white,),
      backgroundColor: Colors.deepOrange,
      ),
    );
  }
}

class DataDiri extends StatelessWidget {
  const DataDiri({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 3,
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
          child: ListTile(
            leading: Icon(Icons.email, color: Colors.deepOrangeAccent),
            title: Text('Email'),
            subtitle: Text('rayhanihsanfadhilah@gmail.com'),
          ),
        ),
        Card(
          elevation: 3,
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
          child: ListTile(
            leading: Icon(Icons.phone, color: Colors.deepOrangeAccent),
            title: Text('No hp'),
            subtitle: Text('083819049467'),
          ),
        ),
        Card(
          elevation: 3,
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
          child: ListTile(
            leading: Icon(Icons.home, color: Colors.deepOrangeAccent),
            title: Text('Alamat'),
            subtitle: Text('Mulya Asri 2 Blok H2/06'),
          ),
        ),
      ],
    );
  }
}
class Matakuliah extends StatelessWidget {
  const Matakuliah({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
    children: [
        Card(
          elevation: 3,
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
          child: ListTile(
            leading: Icon(Icons.book, color: Colors.deepOrangeAccent),
            title: Text(
              'RPL',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Card(
          elevation: 3,
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
          child: ListTile(
            leading: Icon(Icons.book, color: Colors.deepOrangeAccent),
            title: Text(
              'Aplikasi Mobile',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Card(
          elevation: 3,
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
          child: ListTile(
            leading: Icon(Icons.book, color: Colors.deepOrangeAccent),
            title: Text(
              'It Governance',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}
