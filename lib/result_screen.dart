import 'package:flutter/material.dart';
import 'logic.dart';


class Result extends StatelessWidget {
var name , result;
Result(this.name , this.result);




  @override
  Widget build(BuildContext context) {
    var dis = healthy(result);
    return
         Scaffold(
           backgroundColor: Colors.teal,

           body: Container(
             width: double.infinity,
             height: 800,
            margin: EdgeInsets.only(top: 50),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Card(
                  elevation: 12,shadowColor: Colors.purple.shade50,
                  surfaceTintColor: Colors.orange.shade500,
                  color: Colors.white70,
                  child: Container(
                    margin: EdgeInsets.only(top: 50 , left: 35, right: 25),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: color(result),
                          radius: 35,
                          child: Image.asset('assets/image/person.png'),
                        ),
                        SizedBox(height:10,),
                        Center(child: Text('$name,' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w600),)),
                        SizedBox(height: 5,),
                        Text("You are ${healthy(result)} and Your BMI is = $result.\n${meaning(dis!)}"),
                        SizedBox(height: 10,),
                        Center(child: Text("~ By Hansraj Kishore" , style: TextStyle(fontWeight: FontWeight.w800 ,  fontStyle: FontStyle.italic),)),


                        SizedBox(height: 30,),
                        Text("Some Tips For Healthy BMI ", style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500),),
                        SizedBox(height: 10,),
                        Container(
                          width: 500,height: 190,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [Colors.purple.shade100 , Colors.pinkAccent.shade100,Colors.teal.shade100])
                          ),
                          child: Card(
                            elevation: 7,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                 Padding(
                                    padding: const EdgeInsets.only(top: 5 , left: 8 , right: 8 , bottom: 5),
                                    child: Card(
                                      elevation: 5,
                                      color: Colors.red.shade300,
                                      child: Container(
                                        width: 170, height: 30,
                                        color: Colors.white70,
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Column(
                                            children: [
                                              SizedBox(height: 10,),
                                              Image.asset('assets/image/clip.png' ,width: 30),
                                              SizedBox(height: 5,),
                                                 Padding(
                                                  padding: const EdgeInsets.all(8),
                                                  child: Text("Nothing can beat the benefits of having a diet that constituted of fresh vegetables, and fruits. If you are a meat eater, then always make sure, the meat is not processed. Avoiding processed food of any kind is a healthy choice."),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5 , left: 8 , right: 8 , bottom: 5),
                                    child: Card(
                                      elevation: 5,
                                      color: Colors.red.shade300,
                                      child: Container(
                                        width: 170, height: 30,
                                        color: Colors.white70,
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Column(
                                            children: [
                                              SizedBox(height: 10,),
                                              Image.asset('assets/image/health.png' ,width: 30),
                                              SizedBox(height: 5,),
                                              Padding(
                                                padding: const EdgeInsets.all(8),
                                                child: Text("Make sure, you are regularly exercising at least for half an hour to be physically active. In today’s lifestyle, the major problem that we all face is inactivity in physical terms."),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5 , left: 8 , right: 8 , bottom: 5),
                                    child: Card(
                                      elevation: 5,
                                      color: Colors.red.shade300,
                                      child: Container(
                                        width: 170, height: 30,
                                        color: Colors.white70,
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Column(
                                            children: [
                                              SizedBox(height: 10,),
                                              Image.asset('assets/image/sun.png' ,width: 30),
                                              SizedBox(height: 5,),
                                              Padding(
                                                padding: const EdgeInsets.all(8),
                                                child: Text("Get enough sunlight – at least soaking in the sun for ten minutes daily is necessary for having enough vitamin D."),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5 , left: 8 , right: 8 , bottom: 5),
                                    child: Card(
                                      elevation: 5,
                                      color: Colors.red.shade300,
                                      child: Container(
                                        width: 170, height: 30,
                                        color: Colors.white70,
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Column(
                                            children: [
                                              SizedBox(height: 10,),
                                              Image.asset('assets/image/fruits.png' ,width: 30),
                                              SizedBox(height: 5,),
                                              Padding(
                                                padding: const EdgeInsets.all(8),
                                                child: Text("Eat smaller meals and frequent ones. This will help in easy digestion and better metabolism."),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5 , left: 8 , right: 8 , bottom: 5),
                                    child: Card(
                                      elevation: 5,
                                      color: Colors.red.shade300,
                                      child: Container(
                                        width: 170, height: 30,
                                        color: Colors.white70,
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Column(
                                            children: [
                                              Image.asset('assets/image/bmiimage1.png' ,width: 30),
                                              SizedBox(height: 5,),
                                              Padding(
                                                padding: const EdgeInsets.all(8),
                                                child: Text("Keep a check on the body mass index with the bmi calculator to keep motivated and keep going."),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                    ),
                                  ),

                                  ]
                            ),
                          ),
                        ),
                        SizedBox(height: 20,)
                      ],
                    ),
                  )
                ),
              ),
           ),
         )
    ;
  }
}
