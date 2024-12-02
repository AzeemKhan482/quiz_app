import "package:flutter/material.dart";

class QuestionsSummary extends StatelessWidget{
const QuestionsSummary(this.sumaryData,{super.key});
final List<Map<String,Object>>sumaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(children: 
          sumaryData.map(
            (data){
            return Row(children:[
              Text(((data['question_index']as int) + 1).toString()),     // (as int) type casting use to tell dart we know much , common use in maps, accessing maps values using type casting
              Expanded(
                child: Column(children: [
                  Text(data['question']as String),
                  const SizedBox(height: 5,),
                  Text(data['user_answer']as String),
                  Text(data['correct_answer']as String),
                ],),
              )
              
               
              ],
              );    
        
          },).toList(),
        ),
      ),
    );
  }
}