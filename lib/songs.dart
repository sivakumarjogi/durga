import 'package:flutter/material.dart';

class Songs extends StatefulWidget {
 final songName;
   Songs( {Key? key,required this.songName,}) : super(key: key);

  @override
  State<Songs> createState() => _SongsState();
}

class _SongsState extends State<Songs> {

  @override
  void initState() {
  print(widget.songName.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image:  DecorationImage(
                image: AssetImage(widget.songName.toString()),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
