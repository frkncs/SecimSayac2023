import 'package:flutter/material.dart';
import 'canditateArea.dart';
import 'datas/CanditateInfoData.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Seçim 2023 2. Tur Sayaç",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CanditateInfoData kilicdarogluInfoData =
        CanditateInfoData("assets/images/kk.jpg", "Kemal KILIÇDAROĞLU");
    CanditateInfoData rteInfoData =
        CanditateInfoData("assets/images/rte.png", "Recep Tayyip ERDOĞAN");

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Seçim 2023 2. Tur Sayaç",
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        toolbarHeight: 75,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              "Bu uygulama Furkan Koç tarafından, oy sayımını izlemek isteyen vatandaşların da oy sayımını rahatça takip edilmesi için yapılmıştır. Resmî herhangi bir kurumla alakası yoktur.",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 40),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CanditateArea(canditateInfo: kilicdarogluInfoData),
              const SizedBox(height: 40),
              CanditateArea(canditateInfo: rteInfoData),
            ],
          ),
        ],
      ),
    );
  }
}
