
import 'package:flutter/material.dart';

class sonucEkrani extends StatefulWidget {

  bool sonuc;

  sonucEkrani({required this.sonuc});

  @override
  State<sonucEkrani> createState() => _sonucEkraniState();
}

class _sonucEkraniState extends State<sonucEkrani> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekranı",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            widget.sonuc ?Image.asset("resimler/mutlu_resim.png") : Image.asset("resimler/uzgun_resim.png"),
            Text(widget.sonuc ? "Kazandınız" : "Kaybettiniz",style: TextStyle(color: Colors.black54,fontSize: 36),),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text("Tekrar Dene",style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  shape: LinearBorder(),
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
