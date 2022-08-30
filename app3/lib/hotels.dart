
import 'package:app4/hotel.dart';

class hotels{
  List<hotel> Hotels = 
  [
    hotel(1," King \n Room ", "A room with a king-sized bed.",
    " Double \n Room ","A room assigned to two people.",
    " Family \n Room     ", "A room assigned to three or four people."),

    hotel(2," Nice \n Room ", "A room with a Nice Style.",
    " Big   \n Room   ","A room with a big space.",
    " premier \n Room", "A room with premier compoonents."),
  ];

  int current = 0;

  hotel GetCurrent()
  {
    return Hotels[current];
  }

  void move()
  {
    if(current < 1)
    {
    current++;
    }
    else{
      current = 0;
    }
  }

}