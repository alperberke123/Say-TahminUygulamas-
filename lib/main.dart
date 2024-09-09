import 'package:flutter/material.dart';
import 'package:sayi_tahmin_uygulamasi/tahminEkrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Spacer(),
            const Text("Tahmin Oyunu",style: TextStyle(fontSize: 36, color: Colors.black54),),
            const Spacer(),
            Image.asset("resimler/zar_resim.png"),
            const Spacer(),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: const Text("Oyun Başla", style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  shape: const LinearBorder(),
                  backgroundColor: Colors.blue,

                ),

                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (contex) => const TahminEkrani()));
                },
              ),
            ),
            const Spacer(),

          ],
        ),
      ),
    );
  }
}

