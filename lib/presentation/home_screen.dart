import 'package:demo_protocal/presentation/detail_screen.dart';
import 'package:demo_protocal/utils/text_utils.dart';
import 'package:flutter/material.dart';

import '../utils/color_btn.dart';
import '../utils/field_widget.dart';
import '../utils/toast.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _controller= TextEditingController();
  int currentPageIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("HomeScreen"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextUtil(text: "Rules:"),
            const TextUtil(text: "The UI is Render based on the value your enter.",size: 14,),
            const TextUtil(text: "Only Number value should be Entered.",size: 14,),
            const TextUtil(text: "MaxLength is 5",size: 14,),
            const TextUtil(text: "Each value  have its own task in rendering UI",size: 14,),
            const TextUtil(text: "Example:",size: 14,),
            const TextUtil(text: "Index 1 for Tile Color.",size: 14,),
            const TextUtil(text: "Index 2 for Text Color.",size: 14,),
            const TextUtil(text: "Index 3 for Tile design",size: 14,),
            const TextUtil(text: "Index 4 for Theme Color",size: 14,),
            const TextUtil(text: "Index 5 for Animation",size: 14,),


             const  Spacer(),
              FieldWidget(title: 'Please Enter Protocol',controller: _controller,),
            const SizedBox(height: 20,),
            ColorBtn(title: 'Enter', onTap: () {
              if(_controller.text.isEmpty){
                showToast();
              }else{
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailScreen(protocalValue: _controller.text.toString(),)));
              }
            },),
            const  Spacer(),

          ],
        ),
      ),







      ///////  Drawer //////////////
      drawer: Drawer(


        child: ListView(

          padding: EdgeInsets.zero,
          children: const [
             DrawerHeader(

              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),



          ],
        ),
      ),
      /////// Bottom Navigation Bar //////////////
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_sharp),
            ),
            label: 'Messages',
          ),
        ],
      ),

    );
  }
}
