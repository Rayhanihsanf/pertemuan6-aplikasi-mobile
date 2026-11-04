import 'package:flutter/material.dart';
void main(){
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
    final String role = 'Mahasiswa & Software Enginering';

    final List<String> hobi = [
      'Badminton',
      'Billiard',
      'Sepedahan',
      'Berenang',
      'Traveling',
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil',
          style: TextStyle(
          color: Colors.white,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, size: 60, color: Colors.white,),
              ),
              SizedBox(height: 8,),
              Text(
                name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                role,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 24,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
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
              SizedBox(height: 24,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hobi Saya',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemCount: hobi.length,
                  itemBuilder: (context, index) {
                    return HobiCard(myhobi: hobi[index]);
                  }
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
class HobiCard extends StatelessWidget {
  final String myhobi;
  const HobiCard({super.key,
  required this.myhobi});

  

  @override
  Widget build(BuildContext context) {
    return Card(
       elevation: 3,
       margin: EdgeInsets.symmetric(vertical: 6, horizontal: 4),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
           child: ListTile(
            leading: Icon(Icons.timelapse),
            title: Text(
              myhobi,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
             ),
          ),
      ),
    );
  }
}