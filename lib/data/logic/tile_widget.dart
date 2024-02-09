import 'package:demo_protocal/data/logic/text_color.dart';
import 'package:flutter/material.dart';

import '../../utils/text_utils.dart';
import '../list_data.dart';
import 'appbar_color.dart';

tileWidget({required String value, required int index,required String textColorId,required String appbar}){
  switch(value){
    case "1":
      {
        return  Row(
          children: [
            Expanded(child: Padding(padding:const  EdgeInsets.all(10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextUtil(text: fruitList[index].name,
                    color:textColor(textColorId) ,
                  ),
                  const SizedBox(height: 10,),
                  TextUtil(text: fruitList[index].description,size: 10,color:textColor(textColorId) ,),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtil(text: "Price : ",color:textColor(textColorId) ,),
                      TextUtil(text: fruitList[index].price,color:textColor(textColorId) ,),
                    ],
                  )

                ],
              ),)),
            Container(
              height: 120,
              width: 100,
              decoration: BoxDecoration(
                  color: appBarColor(appbar),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(fruitList[index].image)
                  )
              ),
            ),

          ],
        );
      }
    case "2":
      {
        return  Row(
          children: [
            Expanded(child: Padding(padding:const  EdgeInsets.all(10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextUtil(text: fruitList[index].name,
                    color:textColor(textColorId) ,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtil(text: "Price : ",color:textColor(textColorId) ,),
                      TextUtil(text: fruitList[index].price,color:textColor(textColorId) ,),
                    ],
                  )

                ],
              ),)),
            Container(
              height: 120,
              width: 100,
              decoration: BoxDecoration(
                  color: appBarColor(appbar),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(fruitList[index].image)
                  )
              ),
            ),
            Expanded(child: Padding(padding:const  EdgeInsets.all(10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextUtil(text: fruitList[index].description,size: 10,color:textColor(textColorId),length: 6,),
                ],
              ),)),

          ],
        );
      }
    case "3":
      {
        return  Row(
          children: [
            Expanded(child: Padding(padding:const  EdgeInsets.all(10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextUtil(text: fruitList[index].name,
                    color:textColor(textColorId) ,
                  ),
                  const SizedBox(height: 10,),
                  TextUtil(text: fruitList[index].description,size: 10,color:textColor(textColorId) ,),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtil(text: "Price : ",color:textColor(textColorId) ,),
                      TextUtil(text: fruitList[index].price,color:textColor(textColorId) ,),
                    ],
                  )

                ],
              ),)),
            Container(
              height: 120,
              width: 100,
              decoration: BoxDecoration(
                  color:appBarColor(appbar),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                  image: DecorationImage(
                      image: AssetImage(fruitList[index].image)
                  )
              ),
            ),

          ],
        );
      }
    case "4":
      {
        return  Row(
          children: [
            Container(
              height: 140,
              width: 100,
              decoration: BoxDecoration(
                  color:appBarColor(appbar),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                  image: DecorationImage(
                      image: AssetImage(fruitList[index].image)
                  )
              ),
            ),
            Expanded(child: Padding(padding:const  EdgeInsets.all(10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextUtil(text: fruitList[index].name,
                    color:textColor(textColorId) ,
                  ),
                 const  Divider(
                   height: 5,
                 ),

                  TextUtil(text: fruitList[index].description,size: 10,color:textColor(textColorId) ,),
                  const  Divider(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtil(text: "Price : ",color:textColor(textColorId) ,),
                      TextUtil(text: fruitList[index].price,color:textColor(textColorId) ,),
                    ],
                  )

                ],
              ),)),


          ],
        );
      }
    case "5":
      {
        return  Row(
          children: [
            Container(
              height: 140,
              width: 100,
              decoration: BoxDecoration(
                  color: appBarColor(appbar),
                  borderRadius: BorderRadius.circular(10),

                  image: DecorationImage(
                      image: AssetImage(fruitList[index].image)
                  )
              ),
            ),
            Expanded(child: Padding(padding:const  EdgeInsets.all(10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtil(text: fruitList[index].name,
                        color:textColor(textColorId) ,
                      ),
                      Radio(value: false, groupValue: true, onChanged: (val){})
                    ],
                  ),
                 const  SizedBox(height: 10,),
                  TextUtil(text: fruitList[index].description,size: 10,color:textColor(textColorId) ,),
                  const  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtil(text: "Price : ",color:textColor(textColorId) ,),
                      TextUtil(text: fruitList[index].price,color:textColor(textColorId) ,),
                    ],
                  )

                ],
              ),)),


          ],
        );
      }
    case "6":
      {
        return Row(
          children: [
            Container(
              height: 140,
              width: 100,
              decoration: BoxDecoration(
                  color: appBarColor(appbar),
                  borderRadius: BorderRadius.circular(10),

                  image: DecorationImage(
                      image: AssetImage(fruitList[index].image)
                  )
              ),
            ),
            Expanded(child: Padding(padding:const  EdgeInsets.all(10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtil(text: fruitList[index].name,
                        color:textColor(textColorId) ,
                      ),
                      Radio(value: true, groupValue: true, onChanged: (val){})
                    ],
                  ),
                  const  SizedBox(height: 10,),
                  TextUtil(text: fruitList[index].description,size: 10,color:textColor(textColorId) ,),
                  const  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtil(text: "Price : ",color:textColor(textColorId) ,),
                      TextUtil(text: fruitList[index].price,color:textColor(textColorId) ,),
                    ],
                  )

                ],
              ),)),


          ],
        );
      }
    case "7":
      {
        return Row(
          children: [
            Container(
              height: 140,
              width: 100,
              decoration: BoxDecoration(
                  color:appBarColor(appbar),
                  borderRadius: BorderRadius.circular(10),

                  image: DecorationImage(
                      image: AssetImage(fruitList[index].image)
                  )
              ),
            ),
            Expanded(child: Padding(padding:const  EdgeInsets.all(10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextUtil(text: fruitList[index].name,
                    color:textColor(textColorId) ,
                  ),

                  const  SizedBox(height: 10,),
                  TextUtil(text: fruitList[index].description,size: 10,color:textColor(textColorId) ,),
                  const  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtil(text: "Price : ",color:textColor(textColorId) ,),
                     Chip(label:  TextUtil(text: fruitList[index].price,color:textColor(textColorId) ,),)
                    ],
                  )

                ],
              ),)),


          ],
        );
      }
    case "8":
      {
        return Row(
          children: [
            Container(
              height: 140,
              width: 100,
              decoration: BoxDecoration(
                  color:appBarColor(appbar),
                  borderRadius: BorderRadius.circular(10),

                  image: DecorationImage(
                      image: AssetImage(fruitList[index].image)
                  )
              ),
            ),
            Expanded(child: Padding(padding:const  EdgeInsets.all(10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextUtil(text: fruitList[index].name,
                    color:textColor(textColorId) ,
                  ),

                  const  SizedBox(height: 10,),
                  TextUtil(text: fruitList[index].description,size: 10,color:textColor(textColorId) ,),
                  const  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtil(text: "Price : ${fruitList[index].price}",color:textColor(textColorId) ,),
                      Chip(
                        backgroundColor: Colors.blue.shade50,
                        label:  TextUtil(text: "Add",color:textColor(textColorId) ,),)
                    ],
                  )

                ],
              ),)),


          ],
        );
      }
    case "9":
      {
        return Row(
          children: [
            Container(
              height: 140,
              width: 100,
              decoration: BoxDecoration(
                  color: appBarColor(appbar),
                  borderRadius: BorderRadius.circular(10),

                  image: DecorationImage(
                      image: AssetImage(fruitList[index].image)
                  )
              ),
            ),
            Expanded(child: Padding(padding:const  EdgeInsets.all(10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextUtil(text: fruitList[index].name,
                    color:textColor(textColorId) ,
                  ),

                  const  SizedBox(height: 10,),
                  TextUtil(text: fruitList[index].description,size: 10,color:textColor(textColorId) ,),
                  const  SizedBox(height: 10,),
                  TextUtil(text: "Price : ${fruitList[index].price}",color:textColor(textColorId) ,),


                ],

              ),

            )),
            RotatedBox(
              quarterTurns: 3,
              child: Chip(
                avatar:const  CircleAvatar(backgroundColor: Colors.red,
                child: Icon(Icons.shopping_cart,size: 15,color: Colors.white,),),
                backgroundColor:appBarColor(appbar),
                label:  TextUtil(text: "Add",color:textColor("0") ,),),
            )



          ],
        );
      }

    default:{
      return  Row(
        children: [
          Container(
            height: 120,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.cyan.shade50,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(fruitList[index].image)
                )
            ),
          ),
          Expanded(child: Padding(padding:const  EdgeInsets.all(10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextUtil(text: fruitList[index].name,
                  color:textColor(textColorId) ,
                ),
                const SizedBox(height: 10,),
                TextUtil(text: fruitList[index].description,size: 10,color:textColor(textColorId) ,),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextUtil(text: "Price : ",color:textColor(textColorId) ,),
                    TextUtil(text: fruitList[index].price,color:textColor(textColorId) ,),
                  ],
                )

              ],
            ),))

        ],
      );
    }
  }
}