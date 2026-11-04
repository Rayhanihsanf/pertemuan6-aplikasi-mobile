import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Profil',
      home: MyProfil(),
    );
  }
}

class MyProfil extends StatelessWidget {
  MyProfil({super.key});
  final String name = 'Rayhan Ihsan Fadhilah';
  final String nim = '1126180062';
  final String prodi = 'TI';
  final String role = 'Mahasiswa & Software Enginering';

  final List<String> mataKuliah = [
    'RPL',
    'APLIKASI MOBILE',
    'IT GOVERNANCE',
    'SISTEM PAKAR',
    'PBO',
    'ERP',
    'VISUAL  II',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Profilavatar(),
              SizedBox(height: 10),
              ProfilInfo(
                name: name,
                nim: nim,
                prodi: prodi,
                role: role,
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(onPressed: (){},
              icon: Icon(Icons.edit), 
              label: Text('Edit profil')
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.camera_alt_outlined, size: 20, color: Colors.black,),
                    Text(
                      'Instagram',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      ),
                      Icon(Icons.phone, size: 20, color: Colors.black,),
                      Text(
                      'WhatsApp',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      ),
                      Icon(Icons.facebook, size: 20, color: Colors.black,),
                      Text(
                      'FaceBook',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      ),
                  ],

                )),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Data Pribadi',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
              Expanded(child: ListView(
                children: [
                  Column(
                children: [
                  Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                    child: ListTile(
                      leading: Icon(Icons.email),
                      title: Text('Email'),
                      subtitle: Text('rayhanihsanfadhilah@gmail.com'),
                    )
                  ),
                  Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('No. Hp'),
                      subtitle: Text('083819049467'),
                    )
                  ),
                  Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Alamat'),
                      subtitle: Text('Mulya Asri II Blok H2/06'),
                    )
                  ),
                  Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Github'),
                      subtitle: Text('Rayhanihsanf'),
                    )
                  ),
                ],
              ),
                ],
              ),),
              
              
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Mata Kuliah',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemCount: mataKuliah.length,
                  itemBuilder: (context, index) {
                    return HobiCard(mymatkul: mataKuliah[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HobiCard extends StatelessWidget {
  final String mymatkul;
  const HobiCard({super.key, required this.mymatkul});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 2),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(Icons.book, size: 20, color: Colors.blue),
          title: Text(
            mymatkul,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}

class Profilavatar extends StatelessWidget {
  const Profilavatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: Colors.grey,
      child: Icon(Icons.person, size: 40, color: Colors.white),
    );
  }
}

class ProfilInfo extends StatelessWidget {
  final String name;
  final String nim;
  final String prodi;
  final String role;
  const ProfilInfo({
    super.key,
    required this.name,
    required this.nim,
    required this.prodi,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          nim,
          style: TextStyle(
            fontSize: 14,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          prodi,
          style: TextStyle(
            fontSize: 14,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          role, 
          style: TextStyle(
          fontSize: 14,
          fontStyle: FontStyle.normal,
          ),
        ),
      ],
    );
  }
}
