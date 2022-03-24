import 'package:flutter/material.dart';

import 'classscreen.dart';

// ignore: camel_case_types
class topicscreen extends StatefulWidget {
  const topicscreen({ Key? key }) : super(key: key);

  @override
  State<topicscreen> createState() => _topicscreenState();
}

// ignore: camel_case_types
class _topicscreenState extends State<topicscreen> {
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
		title:const Text("Select topics")
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
            MaterialPageRoute(builder: (context) => const classscreen()));  },
        child:const Text("Choose",
						style: TextStyle(
							color: Colors.green,fontSize: 15),)),
			title:
      
      
      const Text("British Empire"),
      
			):
count==1?ListTile(
      
			leading: const Icon(Icons.book_sharp),
			trailing:  TextButton(
        
         onPressed: () {Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const classscreen()));  },
        child:const Text("Choose",
						style: TextStyle(
							color: Colors.green,fontSize: 15),)),
			title:
      
      
      const Text("Aryabhatta"),
      
			):
      count==2?ListTile(
      
			leading: const Icon(Icons.book_sharp),
			trailing:  TextButton(
        
         onPressed: () {Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const classscreen()));  },
        child:const Text("Choose",
						style: TextStyle(
							color: Colors.green,fontSize: 15),)),
			title:
      
      
      const Text("Shah Jahan"),
      
			):
      count==3?ListTile(
      
			leading: const Icon(Icons.book_sharp),
			trailing:  TextButton(
        
         onPressed: () {Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const classscreen()));  },
        child:const Text("Choose",
						style: TextStyle(
							color: Colors.green,fontSize: 15),)),
			title:
      
      
      const Text("Babar and Akbar"),
      
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
