import 'package:durga/durga.dart';
import 'package:durga/hanuman.dart';
import 'package:durga/songs.dart';
import 'package:durga/songslist.dart';
import 'package:durga/vinayaka.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xa7c94b6),
          title: const Text("Home ",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
        body: Container(
          decoration:  BoxDecoration(
            color: const Color(0x377c94b6),
            // image: const DecorationImage(
            //   image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            //   fit: BoxFit.cover,
            // ),

            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("దుర్గా భవానీ పూజ",style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Vinayaka(),
                          ));
                    },
                    child: buttonCard(
                        "assets/ganesh1.png",
                        "వినాయక అష్టోత్తరo",
                        const TextStyle(
                            fontSize: 18,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold)),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Dashboard(),
                            ));
                      },
                      child: buttonCard(
                          "assets/bhavai.jpg",
                          "దుర్గా అష్టోత్తర",
                          const TextStyle(
                              fontSize: 18,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold))),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Hanuman(),
                            ));
                      },
                      child: buttonCard(
                          "assets/hanuman.jpg",
                          "హనుమ అష్టోత్తర",
                          const TextStyle(
                              fontSize: 18,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold))),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ListOfSongs(),
                            ));
                      },
                      child: buttonCard(
                          "assets/allgod.jpg",
                          "కనకదుర్గా పాటలు",
                          const TextStyle(
                              fontSize: 18,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


  Widget buttonCard(String icon, String name, TextStyle textStyle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*.3,
            width: MediaQuery.of(context).size.width *.445,
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
                borderRadius: BorderRadius.circular(5)
            ),
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
