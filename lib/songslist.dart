import 'package:durga/songs.dart';
import 'package:flutter/material.dart';

class ListOfSongs extends StatefulWidget {
  const ListOfSongs({Key? key}) : super(key: key);

  @override
  State<ListOfSongs> createState() => _ListOfSongsState();
}

class _ListOfSongsState extends State<ListOfSongs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,color: Colors.black), onPressed: () {  },
        ),
        title: const Text("పాటలు ",
            style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>  Songs(songName:"assets/songs/suklam.jpg"),
                        ));
                  },
                  child: buttonCard(
                      "assets/ganesh1.png",
                      "వినాయక పాట",
                      const TextStyle(
                          fontSize: 14,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>  Songs(songName: "assets/songs/vinayaka1.jpg"),
                        ));
                  },
                  child: buttonCard(
                      "assets/ganesh.jpg",
                      "వినాయక పాట",
                      const TextStyle(
                          fontSize: 14,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>  Songs( songName:"assets/songs/hanu.jpg",),
                        ));
                  },
                  child: buttonCard(
                      "assets/hanuman1.jpg",
                      "హనుమంతుడు పాట",
                      const TextStyle(
                          fontSize: 14,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>  Songs( songName:"assets/songs/naga.jpg"),
                        ));
                  },
                  child: buttonCard(
                      "assets/songs/subi.jpg",
                      "నాగ రాజా పాట",
                      const TextStyle(
                          fontSize: 14,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Songs(songName:"assets/songs/ambha.jpg"),
                        ));
                  },
                  child: buttonCard(
                      "assets/bhavani.jpg",
                      "దుర్గా భవాని పాట",
                      const TextStyle(
                          fontSize: 14,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>  Songs(songName: "assets/songs/kailasa.jpeg", ),
                        ));
                  },
                  child: buttonCard(
                      "assets/bhavai.jpg",
                      "దుర్గా భవాని పాట",
                      const TextStyle(
                          fontSize: 14,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Songs(songName:"assets/songs/jata.jpg"),
                        ));
                  },
                  child: buttonCard(
                      "assets/songs/sivai.jpg",
                      "శివ పాట",
                      const TextStyle(
                          fontSize: 14,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>  Songs(songName: "assets/songs/rama.jpg" ),
                        ));
                  },
                  child: buttonCard(
                      "assets/songs/ramai.jpg",
                      "రాముడు పాట",
                      const TextStyle(
                          fontSize: 14,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>  Songs(songName: "assets/songs/mangalam.jpg", ),
                    ));
              },
              child: buttonCard(
                  "assets/songs/harai.jpg",
                  "మంగళ హారతి పాట",
                  const TextStyle(
                      fontSize: 14,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold)),
            ),

          ],
        ),
      ),
    );
  }

  // విఘ్నరాజ శ్లోకం
  Widget buttonCard(String icon, String name, TextStyle textStyle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width * 0.4,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(icon),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey, //color of border
                  width: 1, //width of border
                ),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                name,
                textAlign: TextAlign.end,
                style: textStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
