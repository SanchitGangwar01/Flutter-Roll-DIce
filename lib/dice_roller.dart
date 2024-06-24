import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
 const DiceRoller({super.key});
 
  @override
  State<DiceRoller> createState(){
 return _DiceRollerState();                             
  }


}
  final randomizer=Random();
//_DiceRollerState means it is only usable in this file wheater we import any file or not
class _DiceRollerState extends State<DiceRoller>{

  var currentDiceROll=2;
  

void rollDice(){
//var diceRoll= Random().nextInt(6)+1 ; //<7 >0

setState((){
currentDiceROll=randomizer.nextInt(6)+1;
});

}
@override
Widget build(context){
return Column(
              mainAxisSize: MainAxisSize.min,
              children:[
            Image.asset(
              'assets/images/dice-$currentDiceROll.png',
              width:200,
            ), 
            
            const SizedBox(height:20),
           
             TextButton(
              onPressed:rollDice,
             style:TextButton.styleFrom(
              // padding:
              // const EdgeInsets.only(
              //   top:20,
              // ),
              foregroundColor: Colors.white,
             textStyle:const TextStyle(
              fontSize:28)
             ),
              child:const Text('Roll Dice'),
             ),
             ],
             );
}

}