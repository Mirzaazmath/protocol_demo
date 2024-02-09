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
List<String>protocalList=[];
  String listColorId="0";
  String textColorId="0";
  String tileWidgetId="0";
  String appbarColorId="0";
  String animationId="0";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i=0;i<5;i++){

       if(i<widget.protocalValue.length){
         protocalList.add(widget.protocalValue[i]);
       }
         else{
        protocalList.add("0");
      }
    }

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
              child: animationWidget(
                value: animationId,
                child: Container(
                  width: double.infinity,
                margin:const  EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: tileColor(listColorId)
                ),
                child:tileWidget(value:tileWidgetId, index: index, textColorId: textColorId,appbar: appbarColorId )
                                ), ),

            );
          },
        ),
      ),


    );
  }

}
