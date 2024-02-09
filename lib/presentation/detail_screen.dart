import 'package:demo_protocal/data/list_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../data/logic/animation.dart';
import '../data/logic/appbar_color.dart';
import '../data/logic/tile_color.dart';
import '../data/logic/tile_widget.dart';

class DetailScreen extends StatefulWidget {
  final String protocalValue;
  const DetailScreen({super.key,required this.protocalValue});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // Creating a list to Store Protocol values
List<String>protocalList=[];
// Creating variables to assign protocol value
  String listColorId="0";
  String textColorId="0";
  String tileWidgetId="0";
  String appbarColorId="0";
  String animationId="0";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // here we are performing loop
    for(int i=0;i<5;i++){
      // checking the length of entered value
      if(i<widget.protocalValue.length){
        // if true then adding those value in protocalList variable
         protocalList.add(widget.protocalValue[i]);
       }
      // if false add "0" for default setting
         else{
        protocalList.add("0");
      }
    }
// after loop here we are reassigning the variable with new value

    listColorId= protocalList[0];
    textColorId=protocalList[1];
    tileWidgetId=protocalList[2];
    appbarColorId=protocalList[3];
    animationId=protocalList[4];

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        /// Calling appBarColorMethod with protocol value which return color based on the value
        backgroundColor: appBarColor(appbarColorId),
        title:const  Text("List Screen"),
      ),
      body: AnimationLimiter(
        child: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: fruitList.length,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 800),
              /// Calling animationWidgetMethod  with protocol value which handle the animation
              child: animationWidget(
                value: animationId,
                child: Container(
                  width: double.infinity,
                margin:const  EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    /// Calling tileColorMethod with protocol value which return color based on the value
                  color: tileColor(listColorId)
                ),
                    /// Calling tileWidget  with protocol value which return Widget based on the value
                child:tileWidget(value:tileWidgetId, index: index, textColorId: textColorId,appbar: appbarColorId )
                                ), ),

            );
          },
        ),
      ),


    );
  }

}
