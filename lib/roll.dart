import 'package:flutter/material.dart';
import 'dart:math';

class Roll extends StatefulWidget {
  const Roll({super.key});

  @override
  State<Roll> createState() => _RollState();
}

class _RollState extends State<Roll> {
 int dic=1;
 String str ="Roll";
 int dic2=1;
 String str2 ="Roll";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(

        onPressed: () {
          setState(() {
            dic2=roll2();
            if (dic2==1)
            {
              str2="Scissors";
            }
            else if(dic2==2)
            {
              str2="Paper";
            }
            else{
              str2="Rock";
            }

          });
        },
        child: Text(str2,style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),),
      ),
        SizedBox(height: 5,),

        Expanded(child: Image.asset("assets/images/num-$dic2-removebg - Copy.png",width: 120,)),
        SizedBox(height: 15,),
        Expanded(child: Image.asset("assets/images/num-$dic-removebg.png",width: 120,)),
        SizedBox(height: 5,),
        ElevatedButton(

          onPressed: () {
            setState(() {
             dic=roll1();
             if (dic==1)
               {
                 str="Scissors";
               }
             else if(dic==2)
                 {
                   str="Paper";
                 }
             else{
               str="Rock";
             }

            });
          },
          child: Text(str,style: TextStyle(
            color: Colors.black,
            fontSize: 20
          ),),
        ),
      ],
    );
  }
}

int roll1() {
  final val1 = Random().nextInt(3) + 1;
  return val1;
}
int roll2() {
  final val = Random().nextInt(3) + 1;
  return val;
}
