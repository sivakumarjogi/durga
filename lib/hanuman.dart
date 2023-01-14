import 'package:flutter/material.dart';

class Hanuman extends StatefulWidget {
  const Hanuman({Key? key}) : super(key: key);

  @override
  State<Hanuman> createState() => _HanumanState();
}

class _HanumanState extends State<Hanuman> {
  @override
  Widget build(BuildContext context) {
  var height =  MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.deepOrangeAccent,
        title: const Text("హనుమ అష్టోత్తర శత నామావళి",style:  TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.deepOrangeAccent,
        child: Column(
          children: [
            SizedBox(
              height: height*.25,
              width: double.infinity,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(
                  "assets/hanuman1.jpg",
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
                            backgroundImage: AssetImage("assets/hanuman.jpg"),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(data[index]['hanuman'].toString(),style: const TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
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
  {"hanuman": "ఓం శ్రీ ఆంజనేయాయ నమః"},
  {"hanuman": "ఓం మహావీరాయ నమః"},
  {"hanuman": "ఓం హనుమతే నమః"},
  {"hanuman": "ఓం మారుతాత్మజాయ నమః"},
  {"hanuman": "ఓం తత్త్వజ్ఞానప్రదాయ నమః"},
  {"hanuman": "ఓం సీతాదేవీముద్రాప్రదాయకాయ నమః "},
  {"hanuman": "ఓం అశోకవనికాచ్ఛేత్రే నమః"},
  {"hanuman": "ఓం సర్వమాయావిభంజనాయ నమః"},
  {"hanuman": "ఓం సర్వబంధవిమోక్త్రే నమః "},
  {"hanuman": "ఓం రక్షోవిధ్వంసకారకాయ నమః "},
  {"hanuman": "ఓం పరవిద్యాపరీహారాయ నమః"},
  {"hanuman": "ఓం పరశౌర్యవినాశనాయ నమః"},
  {"hanuman": "ఓం పరమంత్రనిరాకర్త్రే నమః"},
  {"hanuman": "ఓం పరయంత్రప్రభేదకాయ నమః"},
  {"hanuman": "ఓం సర్వగ్రహవినాశినే నమః"},
  {"hanuman": "ఓం భీమసేనసహాయకృతే నమః"},
  {"hanuman": "ఓం సర్వదుఃఖహరాయ నమః"},
  {"hanuman": "ఓం సర్వలోకచారిణే నమః"},
  {"hanuman": "ఓం మనోజవాయ నమః"},
  {"hanuman": "ఓం పారిజాతద్రుమూలస్థాయ నమః"},
  {"hanuman": "ఓం సర్వమంత్రస్వరూపవతే నమః"},
  {"hanuman": "ఓం సర్వతంత్రస్వరూపిణే నమః"},
  {"hanuman": "ఓం సర్వయంత్రాత్మకాయ నమః"},
  {"hanuman": "ఓం కపీశ్వరాయ నమః"},
  {"hanuman": "ఓం మహాకాయాయ నమః "},
  {"hanuman": "ఓం సర్వరోగహరాయ నమః"},
  {"hanuman": "ఓం ప్రభవే నమః"},
  {"hanuman": "ఓం బలసిద్ధికరాయ నమః"},
  {"hanuman": "ఓం సర్వవిద్యాసంపత్ప్రదాయకాయ నమః"},
  {"hanuman": "ఓం కపిసేనానాయకాయ నమః"},
  {"hanuman": "ఓం భవిష్యచ్చతురాననాయ నమః"},
  {"hanuman": "ఓం కుమారబ్రహ్మచారిణే నమః"},
  {"hanuman": "ఓం రత్నకుండలదీప్తిమతే నమః"},
  {"hanuman": "ఓం సంచలద్వాలసన్నద్ధలంబమానశిఖోజ్జ్వలాయ నమః"},
  {"hanuman": "ఓం గంధర్వవిద్యాతత్త్వజ్ఞాయ నమః"},
  {"hanuman": "ఓం మహాబలపరాక్రమాయ నమః"},
  {"hanuman": "ఓం కారాగృహవిమోక్త్రే నమః "},
  {"hanuman": "ఓం శృంఖలాబంధమోచకాయ నమః"},
  {"hanuman": "ఓం సాగరోత్తారకాయ నమః"},
  {"hanuman": "ఓం ప్రాజ్ఞాయ నమః"},
  {"hanuman": "ఓం రామదూతాయ నమః"},
  {"hanuman": "ఓం ప్రతాపవతే నమః"},
  {"hanuman": "ఓం వానరాయ నమః"},
  {"hanuman": "ఓం కేసరీసుతాయ నమః"},
  {"hanuman": "ఓం సీతాశోకనివారకాయ నమః"},
  {"hanuman": "ఓం అంజనాగర్భసంభూతాయ నమః"},
  {"hanuman": "ఓం బాలార్కసదృశాననాయ నమః"},
  {"hanuman": "ఓం విభీషణప్రియకరాయ నమః"},
  {"hanuman": "ఓం దశగ్రీవకులాంతకాయ నమః"},
  {"hanuman": "ఓం లక్ష్మణప్రాణదాత్రే నమః"},
  {"hanuman": "ఓం వజ్రకాయాయ నమః"},
  {"hanuman": "ఓం మహాద్యుతయే నమః"},
  {"hanuman": "ఓం చిరంజీవినే నమః"},
  {"hanuman": "ఓం రామభక్తాయ నమః"},
  {"hanuman": "ఓం దైత్యకార్యవిఘాతకాయ నమః"},
  {"hanuman": "ఓం అక్షహంత్రే నమః"},
  {"hanuman": "ఓం కాంచనాభాయ నమః"},
  {"hanuman": "ఓం పంచవక్త్రాయ నమః "},
  {"hanuman": "ఓం మహాతపసే నమః"},
  {"hanuman": "ఓం లంకిణీభంజనాయ నమః"},
  {"hanuman": "ఓం శ్రీమతే నమః"},
  {"hanuman": "ఓం సింహికాప్రాణభంజనాయ నమః"},
  {"hanuman": "ఓం గంధమాదనశైలస్థాయ నమః "},
  {"hanuman": "ఓం లంకాపురవిదాహకాయ నమః"},
  {"hanuman": "ఓం సుగ్రీవసచివాయ నమః"},
  {"hanuman": "ఓం ధీరాయ నమః"},
  {"hanuman": "ఓం శూరాయ నమః"},
  {"hanuman": "ఓం దైత్యకులాంతకాయ నమః"},
  {"hanuman": "ఓం సురార్చితాయ నమః"},
  {"hanuman": "ఓం మహాతేజసే నమః"},
  {"hanuman": "ఓం రామచూడామణిప్రదాయ నమః"},
  {"hanuman": "ఓం కామరూపిణే నమః"},
  {"hanuman": "ఓం పింగళాక్షాయ నమః"},
  {"hanuman": "ఓం వార్ధిమైనాకపూజితాయ నమః"},
  {"hanuman": "ఓం కబళీకృతమార్తాండమండలాయ నమః"},
  {"hanuman": "ఓం విజితేంద్రియాయ నమః"},
  {"hanuman": "ఓం రామసుగ్రీవసంధాత్రే నమః"},
  {"hanuman": "ఓం మహిరావణమర్దనాయ నమః"},
  {"hanuman": "ఓం స్ఫటికాభాయ నమః"},
  {"hanuman": "ఓం వాగధీశాయ నమః"},
  {"hanuman": "ఓం నవవ్యాకృతిపండితాయ నమః"},
  {"hanuman": "ఓం చతుర్బాహవే నమః"},
  {"hanuman": "ఓం దీనబంధవే నమః"},
  {"hanuman": "ఓం మహాత్మనే నమః"},
  {"hanuman": "ఓం భక్తవత్సలాయ నమః"},
  {"hanuman": "ఓం సంజీవననగాహర్త్రే నమః"},
  {"hanuman": "ఓం శుచయే నమః"},
  {"hanuman": "ఓం వాగ్మినే నమః"},
  {"hanuman": "ఓం దృఢవ్రతాయ నమః"},
  {"hanuman": "ఓం కాలనేమిప్రమథనాయ నమః"},
  {"hanuman": "ఓం హరిమర్కటమర్కటాయ నమః"},
  {"hanuman": "ఓం దాంతాయ నమః"},
  {"hanuman": "ఓం శాంతాయ నమః "},
  {"hanuman": "ఓం ప్రసన్నాత్మనే నమః"},
  {"hanuman": "ఓం శతకంఠమదాపహృతే నమః"},
  {"hanuman": "ఓం యోగినే నమః"},
  {"hanuman": "ఓం రామకథాలోలాయ నమః"},
  {"hanuman": "ఓం సీతాన్వేషణపండితాయ నమః"},
  {"hanuman": "ఓం వజ్రదంష్ట్రాయ నమః"},
  {"hanuman": "ఓం వజ్రనఖాయ నమః"},
  {"hanuman": "ఓం రుద్రవీర్యసముద్భవాయ నమః"},
  {"hanuman": "ఓం ఇంద్రజిత్ప్రహితామోఘబ్రహ్మాస్త్రవినివారకాయ నమః"},
  {"hanuman": "ఓం పార్థధ్వజాగ్రసంవాసినే నమః"},
  {"hanuman": "ఓం శరపంజరభేదకాయ నమః"},
  {"hanuman": "ఓం దశబాహవే నమః"},
  {"hanuman": "ఓం లోకపూజ్యాయ నమః"},
  {"hanuman": "ఓం జాంబవత్ప్రీతివర్ధనాయ నమః"},
  {"hanuman": "ఓం సీతాసమేతశ్రీరామపాదసేవాధురంధరాయ నమః"},
];
}
