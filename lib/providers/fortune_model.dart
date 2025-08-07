import 'dart:math';
import 'package:flutter/material.dart';




class FortuneModel with ChangeNotifier{
   String _currentFortune="";
final _fortuneList = [
                      "When the mind is still, the universe surrenders its secrets",
                      "The journey within is the longest and most rewarding path you will walk",
                      "What you fear most often holds your greatest growth",
                      "Even the darkest night will end, and the sun will rise",
                      "A meaningful life is not being rich, being popular, or being perfect — its being real",
                      "The more you let go, the higher you rise",
                      "Your soul knows the way. Trust it",
                      "To understand everything is to forgive everything",
                      "Stillness is not the absence of movement, but the presence of peace",
                      "Silence is full of answers if you learn to listen"
                     ];

FortuneModel()
{
  _generateRandomFortune();
}
String get currentFortune=>_currentFortune;
void _generateRandomFortune(){
   var random = Random();
   int randNum = random.nextInt(_fortuneList.length);
   _currentFortune=_fortuneList[randNum];
   notifyListeners();
}
//function that will get from a private function "the fortunes"...

   void getNew()
   {
    _generateRandomFortune();
   }
}