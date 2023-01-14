import 'package:flutter/material.dart';

class Vinayaka extends StatefulWidget {
  const Vinayaka({Key? key}) : super(key: key);

  @override
  State<Vinayaka> createState() => _VinayakaState();
}

class _VinayakaState extends State<Vinayaka> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("వినాయక అష్టోత్తర శత నామావళి",style:  TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green,
        child: Column(
          children: [
            SizedBox(
              height: height*.25,
              width: double.infinity,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(
                  "assets/ganesh1.png",
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height:height*.640,
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const Divider(
                          color: Colors.white,
                          height: 2,
                          thickness: 2,
                        ),
                        ListTile(
                          trailing: Text("${index+1}",style: const TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w700)),
                          leading: const CircleAvatar(
                            backgroundImage: AssetImage("assets/ganesh.jpg"),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(data[index]['vinayaka'].toString(),style: const TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  var data = [
  {"vinayaka": "ఓం వినాయకాయ నమః"},
  {"vinayaka": "ఓం విఘ్నరాజాయ నమః"},
  {"vinayaka": "ఓం గౌరీపుత్రాయ నమః"},
  {"vinayaka": "ఓం గణేశ్వరాయ నమః"},
  {"vinayaka": "ఓం స్కందాగ్రజాయ నమః"},
  {"vinayaka": "ఓం అవ్యయాయ నమః"},
  {"vinayaka": "ఓం పూతాయ నమః"},
  {"vinayaka": "ఓం దక్షాయ నమః"},
  {"vinayaka": "ఓం అధ్యక్షాయ నమః"},
  {"vinayaka": "ఓం ద్విజప్రియాయ నమః"},
  {"vinayaka": "ఓం అగ్నిగర్వచ్ఛిదే నమః"},
  {"vinayaka": "ఓం ఇంద్రశ్రీప్రదాయ నమః"},
  {"vinayaka": "ఓం వాణీప్రదాయకాయ నమః"},
  {"vinayaka": "ఓం సర్వసిద్ధిప్రదాయ నమః"},
  {"vinayaka": "ఓం శర్వతనయాయ నమః"},
  {"vinayaka": "ఓం శర్వరీప్రియాయ నమః"},
  {"vinayaka": "ఓం సర్వాత్మకాయ నమః"},
  {"vinayaka": "ఓం సృష్టికర్త్రే నమః"},
  {"vinayaka": "ఓం దేవానీకార్చితాయ నమః"},
  {"vinayaka": "ఓం శివాయ నమః"},
  {"vinayaka": "ఓం సిద్ధిబుద్ధిప్రదాయ నమః"},
  {"vinayaka": "ఓం శాంతాయ నమః"},
  {"vinayaka": "ఓం బ్రహ్మచారిణే నమః"},
  {"vinayaka": "ఓం గజాననాయ నమః"},
  {"vinayaka": "ఓం ద్వైమాతురాయ నమః"},
  {"vinayaka": "ఓం మునిస్తుత్యాయ నమః"},
  {"vinayaka": "ఓం భక్తవిఘ్నవినాశనాయ నమః"},
  {"vinayaka": "ఓం ఏకదంతాయ నమః"},
  {"vinayaka": "ఓం చతుర్బాహవే నమః "},
  {"vinayaka": "ఓం చతురాయ నమః"},
  {"vinayaka": "ఓం శక్తిసంయుతాయ నమః"},
  {"vinayaka": "ఓం లంబోదరాయ నమః"},
  {"vinayaka": "ఓం శూర్పకర్ణాయ నమః"},
  {"vinayaka": "ఓం హరయే నమః"},
  {"vinayaka": "ఓం బ్రహ్మవిదుత్తమాయ నమః"},
  {"vinayaka": "ఓం కావ్యాయ నమః"},
  {"vinayaka": "ఓం గ్రహపతయే నమః"},
  {"vinayaka": "ఓం కామినే నమః"},
  {"vinayaka": "ఓం సోమసూర్యాగ్నిలోచనాయ నమః"},
  {"vinayaka": "ఓం పాశాంకుశధరాయ నమః"},
  {"vinayaka": "ఓం చండాయ నమః"},
  {"vinayaka": "ఓం గుణాతీతాయ నమః"},
  {"vinayaka": "ఓం నిరంజనాయ నమః"},
  {"vinayaka": "ఓం అకల్మషాయ నమః"},
  {"vinayaka": "ఓం స్వయం సిద్ధాయ నమః"},
  {"vinayaka": "ఓం సిద్ధార్చితపదాంబుజాయ నమః"},
  {"vinayaka": "ఓం బీజాపూరఫలాసక్తాయ నమః"},
  {"vinayaka": "ఓం వరదాయ నమః"},
  {"vinayaka": "ఓం శాశ్వతాయ నమః"},
  {"vinayaka": "ఓం కృతినే నమః"},
  {"vinayaka": "ఓం ద్విజప్రియాయ నమః"},
  {"vinayaka": "ఓం వీతభయాయ నమః"},
  {"vinayaka": "ఓం గదినే నమః "},
  {"vinayaka": "ఓం చక్రిణే నమః "},
  {"vinayaka": "ఓం ఇక్షుచాపధృతే నమః"},
  {"vinayaka": "ఓం శ్రీదాయ నమః"},
  {"vinayaka": "ఓం అజాయ నమః"},
  {"vinayaka": "ఓం ఉత్పలకరాయ నమః"},
  {"vinayaka": "ఓం శ్రీపతిస్తుతిహర్షితాయ నమః "},
  {"vinayaka": "ఓం కులాద్రిభేత్త్రే నమః "},
  {"vinayaka": "ఓం జటిలాయ నమః"},
  {"vinayaka": "ఓం చంద్రచూడాయ నమః"},
  {"vinayaka": "ఓం అమరేశ్వరాయ నమః"},
  {"vinayaka": "ఓం నాగయజ్ఞోపవీతవతే నమః"},
  {"vinayaka": "ఓం కలికల్మషనాశనాయ నమః"},
  {"vinayaka": "ఓం స్థులకంఠాయ నమః"},
  {"vinayaka": "ఓం స్వయంకర్త్రే నమః"},
  {"vinayaka": "ఓం సామఘోషప్రియాయ నమః"},
  {"vinayaka": "ఓం పరాయ నమః"},
  {"vinayaka": "ఓం స్థూలతుండాయ నమః "},
  {"vinayaka": "ఓం అగ్రణ్యాయ నమః"},
  {"vinayaka": "ఓం ధీరాయ నమః"},
  {"vinayaka": "ఓం వాగీశాయ నమః"},
  {"vinayaka": "ఓం సిద్ధిదాయకాయ నమః "},
  {"vinayaka": "ఓం దూర్వాబిల్వప్రియాయ నమః"},
  {"vinayaka": "ఓం కాంతాయ నమః"},
  {"vinayaka": "ఓం పాపహారిణే నమః"},
  {"vinayaka": "ఓం సమాహితాయ నమః"},
  {"vinayaka": "ఓం ఆశ్రితశ్రీకరాయ నమః"},
  {"vinayaka": "ఓం సౌమ్యాయ నమః"},
  {"vinayaka": "ఓం భక్తవాంఛితదాయకాయ నమః"},
  {"vinayaka": "ఓం శాంతాయ నమః"},
  {"vinayaka": "ఓం అచ్యుతార్చ్యాయ నమః"},
  {"vinayaka": "ఓం కైవల్యాయ నమః"},
  {"vinayaka": "ఓం సచ్చిదానందవిగ్రహాయ నమః"},
  {"vinayaka": "ఓం జ్ఞానినే నమః"},
  {"vinayaka": "ఓం దయాయుతాయ నమః"},
  {"vinayaka": "ఓం దాంతాయ నమః"},
  {"vinayaka": "ఓం బ్రహ్మద్వేషవివర్జితాయ నమః"},
  {"vinayaka": "ఓం ప్రమత్తదైత్యభయదాయ నమః"},
  {"vinayaka": "ఓం వ్యక్తమూర్తయే నమః"},
  {"vinayaka": "ఓం అమూర్తిమతే నమః"},
  {"vinayaka": "ఓం శైలేంద్రతనుజోత్సంగఖేలనోత్సుకమానసాయ నమః"},
  {"vinayaka": "ఓం స్వలావణ్యసుధాసారజితమన్మథవిగ్రహాయ నమః"},
  {"vinayaka": "ఓం సమస్తజగదాధారాయ నమః"},
  {"vinayaka": "ఓం మాయినే నమః "},
  {"vinayaka": "ఓం మూషకవాహనాయ నమః"},
  {"vinayaka": "ఓం రమార్చితాయ నమః"},
  {"vinayaka": "ఓం విధయే నమః"},
  {"vinayaka": "ఓం శ్రీకంఠాయ నమః"},
  {"vinayaka": "ఓం విబుధేశ్వరాయ నమః"},
  {"vinayaka": "ఓం చింతామణిద్వీపపతయే నమః"},
  {"vinayaka": "ఓం పరమాత్మనే నమః"},
  {"vinayaka": "ఓం గజాననాయ నమః "},
  {"vinayaka": "ఓం హృష్టాయ నమః"},
  {"vinayaka": "ఓం తుష్టాయ నమః"},
  {"vinayaka": "ఓం ప్రసన్నాత్మనే నమః"},
  {"vinayaka": "ఓం సర్వసిద్ధిప్రదాయకాయ నమః"},
];
}
