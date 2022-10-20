import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "TODO APP",
  home: TODOAPP(),

));


 class TODOAPP extends StatefulWidget {
  const TODOAPP({Key? key}) : super(key: key);

  @override
  State<TODOAPP> createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  String value = '' ;
  var listTODO = [''];

  addTODO(String item){
    setState(() {
      listTODO.add(item);
    });

  }






  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text("TODO APP"),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          addTODO(value);
        },
        child: const Icon(Icons.add),

       ),


      body:ListView.builder(
        itemCount: listTODO.length,
        itemBuilder:  (context, index) {
        return index== 0? Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: "Add item"
            ),
            onChanged: (val){
              value = val;
            },
          ),
        ):  ListTile(
          leading: const Icon(Icons.work),
          title: Text(listTODO[index],style: const TextStyle(fontWeight: FontWeight.bold),),
        );
        
      })
        
      );
    
    
  }
} 
