// extensions are like functions checking up the variables type like integer ,string , double , float ...and gets access to all variables in the app

extension NonNullString on String?{
  String orEmpty(){
    //if the string is null then don't return Null to view text and return empty string
    if (this== null){
      return "";
      //else then allow to that string to be viewed on screen
    }else{
      return this!;
    }
  }
}

extension NonNullInterger on int?{
  int orZero(){
    //if the string is null then don't return Null to view text and return empty string
    if (this== null){
      return 0;
      //else then allow to that string to be viewed on screen
    }else{
      return this!;
    }
  }
}

//example how extensions work
/*
* void test(){
* String? data =null;
* int? count ;
* print(data.orEmpty()) // here the extension will check the data if the string null it will return empty string ""
* * print(count.orZero()) // here the extension will check the count if it's null it will return zero
* }
*/