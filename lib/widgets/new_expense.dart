import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget{
  const NewExpense({super.key});

  @override
  State <NewExpense> createState(){
    return _NewExpenseState();
  }
}
class _NewExpenseState extends State<NewExpense>{
  @override
  Widget build(BuildContext context){
    var enteredTitle='';
    void saveTitleInput(String inputValue){
      enteredTitle=inputValue;
    }
    return Padding(
        padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            onChanged: saveTitleInput,
            maxLength: 50,
            decoration:const  InputDecoration(
              label: Text("title"),
            ),
          )
        ],
      ),
    );
  }
}