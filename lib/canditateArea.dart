import 'package:flutter/material.dart';
import 'datas/CanditateInfoData.dart';

class CanditateArea extends StatefulWidget {
  const CanditateArea({super.key, required this.canditateInfo});

  final CanditateInfoData canditateInfo;

  @override
  State<CanditateArea> createState() => _CanditateAreaState();
}

class _CanditateAreaState extends State<CanditateArea> {
  int _voteCount = 0;

  void increaseVoteCount(){
    setState(() {
      _voteCount++;
    });
  }

  void decreaseVoteCount(){
    setState(() {
      _voteCount--;

      if (_voteCount <= 0){
        _voteCount = 0;
      }
    });
  }

  void resetVoteCount(){
    setState(() {
      _voteCount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                widget.canditateInfo.imageUrl,
                width: 125,
                height: 125,
              ),
              const SizedBox(width: 14),
              Column(
                children: [
                  Text(
                    widget.canditateInfo.name,
                    style: const TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "$_voteCount",
                    style: const TextStyle(
                        fontSize: 50, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(
                onPressed: resetVoteCount,
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(14)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 252, 28, 28))),
                child: const Text(
                  "Sıfırla",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              FilledButton(
                onPressed: decreaseVoteCount,
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                ),
                child: const Text(
                  "Azalt",
                  style: TextStyle(fontSize: 26),
                ),
              ),
              FilledButton(
                onPressed: increaseVoteCount,
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(0, 197, 49, 1))),
                child: const Text(
                  "Arttır",
                  style: TextStyle(fontSize: 26),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}