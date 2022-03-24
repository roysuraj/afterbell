import 'package:after_bell_students/views/classscreen/topics.dart';
import 'package:flutter/material.dart';

import 'classscreen.dart';

// ignore: camel_case_types
class subjectscreen extends StatefulWidget {
  const subjectscreen({ Key? key }) : super(key: key);

  @override
  State<subjectscreen> createState() => _subjectscreenState();
}

// ignore: camel_case_types
class _subjectscreenState extends State<subjectscreen> {
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
		title:const Text("Select Subjects")
	),
	body: ListView.builder(
		itemCount: 12,
    
    
		itemBuilder: (BuildContext context, count){
      
		return 
    count==0?
    
    ListTile(
      
			leading: const Icon(Icons.book_sharp),
			trailing:  TextButton(
        
         onPressed: () {Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const topicscreen()));  },
        child:const Text("Choose",
						style: TextStyle(
							color: Colors.green,fontSize: 15),)),
			title:
      
      
      const Text("History"),
      
			):
count==1?ListTile(
      
			leading: const Icon(Icons.book_sharp),
			trailing:  TextButton(
        
         onPressed: () {Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const topicscreen()));  },
        child:const Text("Choose",
						style: TextStyle(
							color: Colors.green,fontSize: 15),)),
			title:
      
      
      const Text("Physics"),
      
			):
      count==2?ListTile(
      
			leading: const Icon(Icons.book_sharp),
			trailing:  TextButton(
        
         onPressed: () {Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const topicscreen()));  },
        child:const Text("Choose",
						style: TextStyle(
							color: Colors.green,fontSize: 15),)),
			title:
      
      
      const Text("Maths"),
      
			):
      count==3?ListTile(
      
			leading: const Icon(Icons.book_sharp),
			trailing:  TextButton(
        
         onPressed: () {Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const topicscreen()));  },
        child:const Text("Choose",
						style: TextStyle(
							color: Colors.green,fontSize: 15),)),
			title:
      
      
      const Text("Biology"),
      
			):const SizedBox();

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
