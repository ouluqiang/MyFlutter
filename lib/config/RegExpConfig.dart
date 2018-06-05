
class RegExpConfig{

  /**
   * 匹配邮箱
   */
 static bool getEmail(String str){
      String regex = "\\w+@\\w+\\.[a-z]+(\\.[a-z]+)?";
      RegExp regExp=new RegExp(regex);
      return !regExp.hasMatch(str);
  }




}