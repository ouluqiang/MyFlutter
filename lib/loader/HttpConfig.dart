



//http://lf.snssdk.com/neihan/service/tabs/
class HttpBase{

  static final APPID_KEY='X-Bmob-Application-Id';
  static final APPID_VALUE='d0f1505957f1ade2ea27d30ee603d138';

  static final API_KEY='X-Bmob-REST-API-Key';
  static final API_VALUE='c1f62f2ea289dccb57bf36633cd6547a';

  static final TYPE_KEY='Content-Type';
  static final TYPE_VALUE='application/json';

  static final TOKEN_KEY='X-Bmob-Session-Token';

  static final Map HEADS={APPID_KEY:APPID_VALUE,API_KEY:API_VALUE,TYPE_KEY:TYPE_VALUE};


  static final URL='https://api.bmob.cn/';
  static final URL_CODE=URL+'1/';


  static final LOGIN=URL_CODE+'login';//登录
  static  final USERS=URL_CODE+'users';//注册
  static  final CHECK_SESSION=URL_CODE+'checkSession/';//判断token是否过期




}

/**
 * 内涵段子
 */
class HttpConnotation{

  static final URL='http://lf.snssdk.com/neihan/';
  static final URL_CONNOTATION=URL+'service/tabs/';//分类
  static final URL_RECOMMEND=URL+'stream/mix/v1/?content_type=-101';//推荐
  static final URL_VIDEO=URL+'stream/mix/v1/?content_type=-104';//视频
  static final URL_PIC=URL+'stream/mix/v1/?content_type=-103';//图片
  static final URL_ESSAY=URL+'stream/mix/v1/?content_type=-102';//段子
  static final URL_SUBSCRIPTION=URL+'in_app/mybar_list/';//订阅
  static final URL_LOCAL=URL+'stream/mix/v1/?content_type=-201';//同城
  static final URL_MOMENT=URL+'dongtai/dongtai_list/v1/';//段友圈


/**
 *                     地址：http://lf.snssdk.com/neihan/stream/mix/v1/?content_type=-101
    I/flutter (30616): 地址：http://lf.snssdk.com/neihan/stream/mix/v1/?content_type=-104
    I/flutter (30616): 地址：http://lf.snssdk.com/neihan/stream/mix/v1/?content_type=-103
    I/flutter (30616): 地址：http://lf.snssdk.com/neihan/stream/mix/v1/?content_type=-102
    I/flutter (30616): 地址：http://lf.snssdk.com/neihan/in_app/mybar_list/
    I/flutter (30616): 地址：http://lf.snssdk.com/neihan/stream/mix/v1/?content_type=-201
    I/flutter (30616): 地址：http://lf.snssdk.com/neihan/dongtai/dongtai_list/v1/
 */

}

/**
 * 新闻
 */
final SNSSDK='http://is.snssdk.com/api/news/feed/v51/';
final SNSSDK_PARAM=SNSSDK+'?channel=&aid=&app_name=&version_code=&version_name=&device_platform=&ab_version=&ab_client=&ab_group=&ab_feature=&abflag=3&ssmix=a&device_type=&device_brand=&language=zh&os_api=&os_version=&openudid=1b8d5bf69dc4a561&manifest_version_code=&resolution=&dpi=&update_version_code=&_rticket=';

final tui='category=news_hot&refer=1&count=20&min_behot_time=1491981025&last_refresh_sub_entrance_interval=1491981165&loc_mode=&loc_time=1491981000&latitude=&longitude=&city=&tt_from=pull&lac=&cid=&cp=&iid=0123456789&device_id=12345678952&ac=wifi';