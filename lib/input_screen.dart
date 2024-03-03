import 'package:bmif/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDashBoard extends StatefulWidget {
  const MyDashBoard({super.key});

  @override
  State<MyDashBoard> createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {





  @override
  Widget build(BuildContext context) {
    var name = TextEditingController();
    var age = TextEditingController();
    var weight = TextEditingController();
    var height = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR' ,style: GoogleFonts.goblinOne(),),
        backgroundColor: Colors.grey.shade500,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Input Your Data Here ' , style: TextStyle(fontWeight: FontWeight.w800,
                fontSize: 20),),
              Card(
                shadowColor: Colors.grey,
                elevation: 5,
                color: Colors.white60,
                surfaceTintColor: Colors.red,
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        controller: name,
                        decoration: InputDecoration(hintText: 'enter your name' , enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.green , width: 3),
                        ) ,disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Colors.grey , width: 3
                            )
                        ) ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: age,
                        decoration: InputDecoration(hintText: 'enter your age' , enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.green , width: 3),
                        ) ,disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Colors.grey , width: 3
                            )
                        ) ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: weight,
                        decoration: InputDecoration(hintText: 'enter your weight(KG)' , enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.green , width: 3),
                        ) ,disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Colors.grey , width: 3
                            )
                        ) ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: height,
                        decoration: InputDecoration(hintText: 'enter your height(CM)' , enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.green , width: 3),
                        ) ,disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Colors.grey , width: 3
                            )
                        ) ),
                      ),
                    ),
                    SizedBox(height: 50,),
                  ],
                ),
              ),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: (){
                  String nameis = name.text;
                  var ageis = int.parse(age.text.toString());
                  var weightis = int.parse(weight.text.toString());
                  var heightis = (int.parse(height.text.toString()))/100;
                  double ans = (weightis/(heightis*heightis)).roundToDouble();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Result(nameis , ans),));
                  setState(() {});
                },child: Text('BMI'),),
              ],
            ),

        ),
      ),
    );
  }
}