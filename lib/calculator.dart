class Calculator{

  dynamic num1, num2, result;

  String operator;



  Calculator(){
    clear();
  }

  dynamic plus(){
    return num1+= num2;
  }
  void clear(){
    operator = null;
    num1 = null;
    num2 = null;
    result = 0;
  }

  dynamic showResult(){
    return result;
  }





}