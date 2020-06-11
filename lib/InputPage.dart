import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
const pressed= Colors.pinkAccent;
Color notpressed =Color(0xFF1D1E33);
Color male=Color(0xFF1D1E33);
Color female=Color(0xFF1D1E33);
bool enabled=false;
double height=180.0;
int weight=60;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),

      body: Column(
        children: <Widget>[

          Expanded(
            child: Row(
              children: <Widget>[

                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        male=pressed;
                        female=notpressed;
                      });


                    },
                    child: Container(

//
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(

                        color: male,

                        borderRadius: BorderRadius.circular(10.0),

                      ),
                      child: Column(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.male,
                            size: 80.0,
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(

                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        female=pressed;
                        male=notpressed;
                      });
                    },
                    child: Container(

//            width:170.0,
//            height: 200.0,
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: female,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.female,
                            size: 80.0,
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),

          Expanded(
            child: Row(
              children: <Widget>[

                Expanded(
                  child: Container(

//
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: notpressed,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(height.toString()

                              ),

//                           SliderTheme(
//                            data: SliderTheme.of(context).copyWith(
//                              activeTrackColor: Colors.pinkAccent,
//                              thumbColor: Colors.amberAccent,
//                            ),


                          Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          activeColor: Colors.pinkAccent,
                          inactiveColor: Colors.white,
                          onChanged: (double newValue){
                            setState(() {
                              height=newValue;
                            });


                          },
                        ),
//    ),
                      ],

                    ),

                  ),
                ),

//                Expanded(
//                  child: Container(
//
////            width:170.0,
////            height: 200.0,
//                    margin: EdgeInsets.all(15.0),
//                    decoration: BoxDecoration(
//                      color: Color(0xFF1D1E33),
//                      borderRadius: BorderRadius.circular(10.0),
//                    ),
//                  ),
//                ),

              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[

                Expanded(
                  child: Container(

//
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(weight.toString()),
                        FloatingActionButton(
                          child: Icon(Icons.add),
                          onPressed: (){
                            setState(() {
                              weight++;
                            });

                          },

                        ),
                      ],

                    ),
                  ),
                ),

                Expanded(
                  child: Container(

//            width:170.0,
//            height: 200.0,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),

              ],
            ),
          ),

          Expanded(
            child: Row(
              children: <Widget>[

               Expanded(
                 child: Container(

                  margin: EdgeInsets.all(0.0),
                  color: Colors.pink,
                    height: 80.0,

                  width: double.infinity,

              ),
               ),
            ],
            ),
          ),

    ],
      ),

    );
  }
}
