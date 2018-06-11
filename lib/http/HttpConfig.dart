

class HttpBase{

  static final APPID_KEY='X-Bmob-Application-Id';
  static final APPID_VALUE='d0f1505957f1ade2ea27d30ee603d138';

  static final API_KEY='X-Bmob-REST-API-Key';
  static final API_VALUE='c1f62f2ea289dccb57bf36633cd6547a';

  static final TYPE_KEY='Content-Type';
  static final TYPE_VALUE='application/json';

  static final TOKEN_KEY='X-Bmob-Session-Token';

  static final Map<String,String> HEADS={APPID_KEY:APPID_VALUE,API_KEY:API_VALUE,TYPE_KEY:TYPE_VALUE};


  static final URL='https://api.bmob.cn/';

  static  final FILES=URL+'2/files/';//文件

  static final URL_CODE=URL+'1/';
  static final LOGIN=URL_CODE+'login';//登录
  static  final USERS=URL_CODE+'users';//注册
  static  final CHECK_SESSION=URL_CODE+'checkSession/';//判断token是否过期
  static  final REQUEST_EMAIL_VERIFY=URL_CODE+'requestEmailVerify/';//验证邮箱
  static  final UPDATE_USER_PASSWORD=URL_CODE+'updateUserPassword/';//修改密码
  static  final REQUEST_PASSWORD_RESET=URL_CODE+'requestPasswordReset/';//邮箱重置密码




}

