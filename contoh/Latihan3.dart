import 'package:flutter/material.dart';

void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Live View'),
        ),
        body: ListView(
          children: [
            Infobaris(ikon: Icons.email, label: 'Email', values: 'ujang123@gmail.com'),
            SizedBox(height: 10,),
            Infobaris(ikon: Icons.phone, label: 'NO. HP', values: '082136794135'),
            SizedBox(height: 10,),
            Infobaris(ikon: Icons.home, label: 'Alamat', values: 'Jl. Sudirman.')
          ],
        ),
      ),
    );
  }
}
class Infobaris extends StatelessWidget {
  const Infobaris({super.key,
  required this.ikon,
  required this.label,
  required this.values,
  });
  final IconData ikon;
  final String label;
  final String values;


  @override
  Widget build(BuildContext context) {
    return ListTile(
              leading: Icon(ikon),
              title: Text(label),
              subtitle: Text(values),
            );
  }
}