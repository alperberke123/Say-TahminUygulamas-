import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sayi_tahmin_uygulamasi/sonucEkrani.dart';

class TahminEkrani extends StatefulWidget {
  const TahminEkrani({super.key});

  @override
  State<TahminEkrani> createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {

  var tfController = TextEditingController();
  int rasgeleSayi = 0;
  int kalanHak = 5;
  String yardim ="";

  @override
  void initState() {
    super.initState();
    rasgeleSayi = Random().nextInt(101);
    print("Üretilen Sayı = $rasgeleSayi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tahmin Ekranı",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            Text("Kalan Hak : $kalanHak",style: TextStyle(color: Colors.pink,fontSize: 30),),
            Text("Yardım : $yardim",style: TextStyle(color: Colors.black54,fontSize: 24),),
            Padding(
              padding:  EdgeInsets.all(10.0),
              child: TextField(
                controller: tfController,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Tahmin",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child:  Text("Tahmin Et",style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  shape: LinearBorder(),
                ),
                onPressed: (){
                  setState(() {
                    kalanHak = kalanHak -1;
                  });

                  int tahmin = int.parse(tfController.text);

                  if(tahmin == rasgeleSayi ){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => sonucEkrani(sonuc: true,) ));

                  }
                  if(tahmin < rasgeleSayi ){
                    setState(() {
                      yardim = "Tahmini Yükselt";
                    });
                  }
                  if(tahmin> rasgeleSayi){
                    setState(() {
                      yardim = "Tahmini Azalt";
                    });
                  }
                  if(kalanHak == 0){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  sonucEkrani(sonuc: false,) ));
                  }
                  tfController.text ="";
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
