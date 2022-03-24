import 'package:after_bell_students/views/classscreen/subjects.dart';
import 'package:flutter/material.dart';

class classscreen extends StatefulWidget {
  const classscreen({ Key? key }) : super(key: key);

  @override
  State<classscreen> createState() => _classscreenState();
}

class _classscreenState extends State<classscreen> {
  @override
// ignore: override_on_non_overriding_member
int count=1;
  // ignore: override_on_non_overriding_member

  Widget build(BuildContext context) {
   	return Scaffold(
	appBar: AppBar(
    backgroundColor: Colors.redAccent,
    primary: true,
    centerTitle: true,
		title:const Text("Select Class")
	),
	body: ListView.builder(
		itemCount: 12,
    
    
		itemBuilder: (BuildContext context, count){
      
		return ListTile(
      
			leading: const Icon(Icons.school),
			trailing:  TextButton(
        
         onPressed: () {Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const subjectscreen()));  },
        child:const Text("Choose",
						style: TextStyle(
							color: Colors.green,fontSize: 15),)),
			title:
      
      count==0?
      const Text("Lower Nursery"):
       Text("Class $count" ),
			);
		}
		),
	);
  }
}


























class ListViewBuilder extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title:const Text("ListView.builder")
	),
	body: ListView.builder(
		itemCount: 5,
		itemBuilder: (BuildContext context,int index){
		return ListTile(
			leading: const Icon(Icons.list),
			trailing: const Text("GFG",
						style: const TextStyle(
							color: Colors.green,fontSize: 15),),
			title:Text("List item $index")
			);
		}
		),
	);
}
}
