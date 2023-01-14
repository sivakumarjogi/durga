import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.red,
        title: const Text("దుర్గా అష్టోత్తర శత నామావళి", style: TextStyle(
            fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.red,
        child: Column(
          children: [
            SizedBox(
              height: height * .25,
              width: double.infinity,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(
                  "assets/bhavani.jpg",
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: height * .640,
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
                          trailing: Text("${index + 1}", style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w700)),
                          leading: const CircleAvatar(
                            backgroundImage: AssetImage("assets/bhavai.jpg"),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(data[index]['bhavaniname'].toString(),
                              style: const TextStyle(fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),),
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
    {"bhavaniname": "ఓం దుర్గాయై నమః"},
    {"bhavaniname": "ఓం శివాయై నమః"},
    {"bhavaniname": "ఓం మహాలక్ష్మ్యై నమః"},
    {"bhavaniname": "ఓం మహాగౌర్యై నమః"},
    {"bhavaniname": "ఓం చండికాయై నమః"},
    {"bhavaniname": "ఓం సర్వజ్ఞాయై నమః"},
    {"bhavaniname": "ఓం సర్వాలోకేశాయై నమః"},
    {"bhavaniname": "ఓం సర్వకర్మఫలప్రదాయై నమః"},
    {"bhavaniname": "ఓం సర్వతీర్ధమయ్యై నమః"},
    {"bhavaniname": "ఓం పుణ్యాయై నమః (10)"},
    {"bhavaniname": "ఓం దేవయోనయే నమః"},
    {"bhavaniname": "ఓం అయోనిజాయై నమః"},
    {"bhavaniname": "ఓం భూమిజాయై నమః"},
    {"bhavaniname": "ఓం నిర్గుణాయై నమః"},
    {"bhavaniname": "ఓం ఆధారశక్త్యై నమః"},
    {"bhavaniname": "ఓం అనీశ్వర్యై నమః"},
    {"bhavaniname": "ఓం నిర్గుణాయై నమః"},
    {"bhavaniname": "ఓం నిరహంకారాయై నమః"},
    {"bhavaniname": "ఓం సర్వగర్వ విమర్దిన్యై నమః"},
    {"bhavaniname": "ఓం సర్వలోకప్రియాయై నమః (20)"},
    {"bhavaniname": "ఓం వాణ్యై నమః"},
    {"bhavaniname": "ఓం సర్వవిద్యాధి దేవతాయై నమః"},
    {"bhavaniname": "ఓం పార్వత్యై నమః"},
    {"bhavaniname": "ఓం దేవమాత్రే నమః"},
    {"bhavaniname": "ఓం వనీశాయై నమః"},
    {"bhavaniname": "ఓం వింధ్యవాసిన్యై నమః"},
    {"bhavaniname": "ఓం తేజోవత్యై నమః"},
    {"bhavaniname": "ఓం మహామాత్రే నమః"},
    {"bhavaniname": "ఓం కోటిసూర్య సమప్రభాయై నమః"},
    {"bhavaniname": "ఓం దేవతాయై నమః (30)"},
    {"bhavaniname": "ఓం వహ్నిరూపాయై నమః"},
    {"bhavaniname": "ఓం సతేజసే నమః"},
    {"bhavaniname": "ఓం వర్ణరూపిణ్యై నమః"},
    {"bhavaniname": "ఓం గుణాశ్రయాయై నమః"},
    {"bhavaniname": "ఓం గుణమధ్యాయై నమః"},
    {"bhavaniname": "ఓం గుణత్రయ వివర్జితాయై నమః"},
    {"bhavaniname": "ఓం కర్మజ్ఞానప్రదాయై నమః"},
    {"bhavaniname": "ఓం కాంతాయై నమః"},
    {"bhavaniname": "ఓం సర్వసంహార కారిణ్యై నమః"},
    {"bhavaniname": "ఓం ధర్మజ్ఞానాయై నమః (40)"},
    {"bhavaniname": "ఓం ధర్మనిష్ఠాయై నమః"},
    {"bhavaniname": "ఓం సర్వకర్మ వివర్జితాయై నమః"},
    {"bhavaniname": "ఓం కామాక్ష్యై నమః"},
    {"bhavaniname": "ఓం కామసంహర్త్ర్యై నమః"},
    {"bhavaniname": "ఓం కామక్రోధ వివర్జితాయై నమః"},
    {"bhavaniname": "ఓం శాంకర్యై నమః"},
    {"bhavaniname": "ఓం శాంభవ్యై నమః"},
    {"bhavaniname": "ఓం శాంతాయై నమః"},
    {"bhavaniname": "ఓం చంద్రసుర్యాగ్ని లోచనాయై నమః"},
    {"bhavaniname": "ఓం సుజయాయై నమః (50)"},
    {"bhavaniname": "ఓం జయభూమిష్ఠాయై నమః"},
    {"bhavaniname": "ఓం జాహ్నవ్యై నమః"},
    {"bhavaniname": "ఓం జనపూజితాయై నమః"},
    {"bhavaniname": "ఓం శాస్త్ర్యై నమః"},
    {"bhavaniname": "ఓం శాస్త్రమయ్యై నమః"},
    {"bhavaniname": "ఓం నిత్యాయై నమః"},
    {"bhavaniname": "ఓం శుభాయై నమః"},
    {"bhavaniname": "ఓం చంద్రార్ధమస్తకాయై నమః"},
    {"bhavaniname": "ఓం భారత్యై నమః"},
    {"bhavaniname": "ఓం భ్రామర్యై నమః (60)"},
    {"bhavaniname": "ఓం కల్పాయై నమః"},
    {"bhavaniname": "ఓం కరాళ్యై నమః"},
    {"bhavaniname": "ఓం కృష్ణ పింగళాయై నమః"},
    {"bhavaniname": "ఓం బ్రాహ్మ్యై నమః"},
    {"bhavaniname": "ఓం నారాయణ్యై నమః"},
    {"bhavaniname": "ఓం రౌద్ర్యై నమః"},
    {"bhavaniname": "ఓం చంద్రామృత పరిస్రుతాయై నమః"},
    {"bhavaniname": "ఓం జ్యేష్ఠాయై నమః"},
    {"bhavaniname": "ఓం ఇందిరాయై నమః"},
    {"bhavaniname": "ఓం మహామాయాయై నమః (70)"},
    {"bhavaniname": "ఓం జగత్సృష్ట్యధికారిణ్యై నమః"},
    {"bhavaniname": "ఓం బ్రహ్మాండకోటి సంస్థానాయై నమః"},
    {"bhavaniname": "ఓం కామిన్యై నమః"},
    {"bhavaniname": "ఓం కమలాలయాయై నమః"},
    {"bhavaniname": "ఓం కాత్యాయన్యై నమః"},
    {"bhavaniname": "ఓం కలాతీతాయై నమః"},
    {"bhavaniname": "ఓం కాలసంహారకారిణ్యై నమః"},
    {"bhavaniname": "ఓం యోగనిష్ఠాయై నమః"},
    {"bhavaniname": "ఓం యోగిగమ్యాయై నమః"},
    {"bhavaniname": "ఓం యోగిధ్యేయాయై నమః (80)"},
    {"bhavaniname": "ఓం తపస్విన్యై నమః"},
    {"bhavaniname": "ఓం జ్ఞానరూపాయై నమః"},
    {"bhavaniname": "ఓం నిరాకారాయై నమః"},
    {"bhavaniname": "ఓం భక్తాభీష్ట ఫలప్రదాయై నమః"},
    {"bhavaniname": "ఓం భూతాత్మికాయై నమః"},
    {"bhavaniname": "ఓం భూతమాత్రే నమః"},
    {"bhavaniname": "ఓం భూతేశ్యై నమః"},
    {"bhavaniname": "ఓం భూతధారిణ్యై నమః"},
    {"bhavaniname": "ఓం స్వధాయై నమః"},
    {"bhavaniname": "ఓం నారీ మధ్యగతాయై నమః (90)"},
    {"bhavaniname": "ఓం షడాధారాధి వర్ధిన్యై నమః"},
    {"bhavaniname": "ఓం మోహితాంశుభవాయై నమః"},
    {"bhavaniname": "ఓం శుభ్రాయై నమః"},
    {"bhavaniname": "ఓం సూక్ష్మాయై నమః"},
    {"bhavaniname": "ఓం మాత్రాయై నమః"},
    {"bhavaniname": "ఓం నిరాలసాయై నమః"},
    {"bhavaniname": "ఓం నిమ్నగాయై నమః"},
    {"bhavaniname": "ఓం నీలసంకాశాయై నమః"},
    {"bhavaniname": "ఓం నిత్యానందాయై నమః"},
    {"bhavaniname": "ఓం హరాయై నమః (100)"},
    {"bhavaniname": "ఓం పరాయై నమః"},
    {"bhavaniname": "ఓం సర్వజ్ఞానప్రదాయై నమః"},
    {"bhavaniname": "ఓం అనంతాయై నమః"},
    {"bhavaniname": "ఓం సత్యాయై నమః"},
    {"bhavaniname": "ఓం దుర్లభరూపిణ్యై నమః"},
    {"bhavaniname": "ఓం సరస్వత్యై నమః"},
    {"bhavaniname": "ఓం సర్వగతాయై నమః"},
    {"bhavaniname": "ఓం సర్వాభీష్టప్రదాయిన్యై నమః (108)"}
  ];
}
