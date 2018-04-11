



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
  static final V1=URL+'stream/mix/v1/';
  static final URL_CONNOTATION=URL+'service/tabs/';//分类
  static final URL_CONNOTATION_TAB=URL_CONNOTATION+'?essence=1&iid=3216590132&device_id=32613520945&ac=wifi&channel=360&aid=7&app_name=joke_essay&version_code=612&version_name=6.1.2&device_platform=android&ssmix=a&device_type=sansung&device_brand=xiaomi&os_api=28&os_version=6.10.1&uuid=326135942187625&openudid=3dg6s95rhg2a3dg5&manifest_version_code=612&resolution=1450*2800&dpi=620&update_version_code=6120';//分类

//  static final URL_RECOMMEND=URL+'stream/mix/v1/?content_type=-101';//推荐
//  static final URL_RECOMMEND_=URL_RECOMMEND+'?mpic=1&webp=1&essence=1&content_type=-101&message_cursor=-1&am_longitude=110&am_latitude=120&am_city=%E5%8C%97%E4%BA%AC%E5%B8%82&am_loc_time=1463225362314&count=30&min_time=1465232121&screen_width=1450&do00le_col_mode=0&iid=3216590132&device_id=32613520945&ac=wifi&channel=360&aid=7&app_name=joke_essay&version_code=612&version_name=6.1.2&device_platform=android&ssmix=a&device_type=sansung&device_brand=xiaomi&os_api=28&os_version=6.10.1&uuid=326135942187625&openudid=3dg6s95rhg2a3dg5&manifest_version_code=612&resolution=1450*2800&dpi=620&update_version_code=6120';//推荐

  static final URL_VIDEO=URL+'stream/mix/v1/?content_type=-104';//视频

  static final URL_VIDEO_PARAM=V1+'?mpic=1&webp=1&essence=1&content_type=-104&message_cursor=-1&am_longitude=110&am_latitude=120&am_city=%E5%8C%97%E4%BA%AC%E5%B8%82&am_loc_time=1463225362814&count=30&min_time=1489143837&screen_width=1450&do00le_col_mode=0&iid=3216590132&device_id=32613520945&ac=wifi&channel=360&aid=7&app_name=joke_essay&version_code=612&version_name=6.1.2&device_platform=android&ssmix=a&device_type=sansung&device_brand=xiaomi&os_api=28&os_version=6.10.1&uuid=326135942187625&openudid=3dg6s95rhg2a3dg5&manifest_version_code=612&resolution=1450*2800&dpi=620&update_version_code=6120';//视频

  static final URL_PIC=URL+'stream/mix/v1/?content_type=-103';//图片

  static final URL_PIC_PARAM=V1+'?mpic=1&webp=1&essence=1&content_type=-103&message_cursor=-1&am_longitude=110&am_latitude=120&am_city=%E5%8C%97%E4%BA%AC%E5%B8%82&am_loc_time=1489226058493&count=30&min_time=1489226061&screen_width=1450&do00le_col_mode=0&iid=3216590132&device_id=32613520945&ac=wifi&channel=360&aid=7&app_name=joke_essay&version_code=612&version_name=6.1.2&device_platform=android&ssmix=a&device_type=sansung&device_brand=xiaomi&os_api=28&os_version=6.10.1&uuid=326135942187625&openudid=3dg6s95rhg2a3dg5&manifest_version_code=612&resolution=1450*2800&dpi=620&update_version_code=6120';//图片


  static final URL_ESSAY=URL+'stream/mix/v1/?content_type=-102';//段子
  static final URL_ESSAY_PARAM=V1+'?mpic=1&webp=1&essence=1&content_type=-102&message_cursor=-1&am_longitude=110&am_latitude=120&am_city=%E5%8C%97%E4%BA%AC%E5%B8%82&am_loc_time=1489226058493&count=30&min_time=1489205901&screen_width=1450&do00le_col_mode=0&iid=3216590132&device_id=32613520945&ac=wifi&channel=360&aid=7&app_name=joke_essay&version_code=612&version_name=6.1.2&device_platform=android&ssmix=a&device_type=sansung&device_brand=xiaomi&os_api=28&os_version=6.10.1&uuid=326135942187625&openudid=3dg6s95rhg2a3dg5&manifest_version_code=612&resolution=1450*2800&dpi=620&update_version_code=6120';//段子
  static final URL_PERSONAL_SHOW_PARAM=V1+'?mpic=1&webp=1&essence=1&content_type=-301&message_cursor=-1&am_longitude=110&am_latitude=120&am_city=%E5%8C%97%E4%BA%AC%E5%B8%82&am_loc_time=1463225362814&count=30&min_time=1489205906&screen_width=1450&do00le_col_mode=1&iid=3216590132&device_id=32613520945&ac=wifi&channel=360&aid=7&app_name=joke_essay&version_code=612&version_name=6.1.2&device_platform=android&ssmix=a&device_type=sansung&device_brand=xiaomi&os_api=28&os_version=6.10.1&uuid=326135942187625&openudid=3dg6s95rhg2a3dg5&manifest_version_code=612&resolution=1450*2800&dpi=620&update_version_code=6120';//段子

  static final URL_LIVE='http://iu.snssdk.com/neihan/stream/mix/v1/?mpic=1&webp=1&essence=1&content_type=-104&message_cursor=-1&am_longitude=110&am_latitude=120&am_city=%E5%8C%97%E4%BA%AC%E5%B8%82&am_loc_time=1463225362814&count=30&min_time=1489143837&screen_width=1450&do00le_col_mode=0&iid=3216590132&device_id=32613520945&ac=wifi&channel=360&aid=7&app_name=joke_essay&version_code=612&version_name=6.1.2&device_platform=android&ssmix=a&device_type=sansung&device_brand=xiaomi&os_api=28&os_version=6.10.1&uuid=326135942187625&openudid=3dg6s95rhg2a3dg5&manifest_version_code=612&resolution=1450*2800&dpi=620&update_version_code=6120';//直播


/**
 * 分类
 * http://lf.snssdk.com/neihan/service/tabs/
 * ?essence=1&iid=3216590132&device_id=32613520945&ac=wifi&channel=360&aid=7&app_name=joke_essay&version_code=612&version_name=6.1.2&device_platform=android&ssmix=a&device_type=sansung&device_brand=xiaomi&os_api=28&os_version=6.10.1&uuid=326135942187625&openudid=3dg6s95rhg2a3dg5&manifest_version_code=612&resolution=1450*2800&dpi=620&update_version_code=6120
 *
 * 推荐
 * http://iu.snssdk.com/neihan/stream/mix/v1/
 * ?mpic=1&webp=1&essence=1&content_type=-101&message_cursor=-1&am_longitude=110&am_latitude=120&am_city=%E5%8C%97%E4%BA%AC%E5%B8%82&am_loc_time=1463225362314&count=30&min_time=1465232121&screen_width=1450&do00le_col_mode=0&iid=3216590132&device_id=32613520945&ac=wifi&channel=360&aid=7&app_name=joke_essay&version_code=612&version_name=6.1.2&device_platform=android&ssmix=a&device_type=sansung&device_brand=xiaomi&os_api=28&os_version=6.10.1&uuid=326135942187625&openudid=3dg6s95rhg2a3dg5&manifest_version_code=612&resolution=1450*2800&dpi=620&update_version_code=6120
 *
 * 视频
 * http://iu.snssdk.com/neihan/stream/mix/v1/?mpic=1&webp=1&essence=1&content_type=-104&message_cursor=-1&am_longitude=110&am_latitude=120&am_city=%E5%8C%97%E4%BA%AC%E5%B8%82&am_loc_time=1463225362814&count=30&min_time=1489143837&screen_width=1450&do00le_col_mode=0&iid=3216590132&device_id=32613520945&ac=wifi&channel=360&aid=7&app_name=joke_essay&version_code=612&version_name=6.1.2&device_platform=android&ssmix=a&device_type=sansung&device_brand=xiaomi&os_api=28&os_version=6.10.1&uuid=326135942187625&openudid=3dg6s95rhg2a3dg5&manifest_version_code=612&resolution=1450*2800&dpi=620&update_version_code=6120
 *
 * 直播
 * http://hotsoon.snssdk.com/hotsoon/feed/
 * ?count=20&min_time=1489205906&iid=3216590132&device_id=32613520945&ac=wifi&channel=360&aid=7&app_name=joke_essay&version_code=612&version_name=6.1.2&device_platform=android&ssmix=a&device_type=sansung&device_brand=xiaomi&os_api=28&os_version=6.10.1&uuid=326135942187625&openudid=3dg6s95rhg2a3dg5&manifest_version_code=612&resolution=1450*2800&dpi=620&update_version_code=6120
 *
 *
 * 图片
 *http://is.snssdk.com/neihan/stream/mix/v1/
 * ?mpic=1&webp=1&essence=1&content_type=-103&message_cursor=-1&am_longitude=110&am_latitude=120&am_city=%E5%8C%97%E4%BA%AC%E5%B8%82&am_loc_time=1489226058493&count=30&min_time=1489226061&screen_width=1450&do00le_col_mode=0&iid=3216590132&device_id=32613520945&ac=wifi&channel=360&aid=7&app_name=joke_essay&version_code=612&version_name=6.1.2&device_platform=android&ssmix=a&device_type=sansung&device_brand=xiaomi&os_api=28&os_version=6.10.1&uuid=326135942187625&openudid=3dg6s95rhg2a3dg5&manifest_version_code=612&resolution=1450*2800&dpi=620&update_version_code=6120
 *
 * 段友秀
 * http://iu.snssdk.com/neihan/stream/mix/v1/
 * ?mpic=1&webp=1&essence=1&content_type=-301&message_cursor=-1&am_longitude=110&am_latitude=120&am_city=%E5%8C%97%E4%BA%AC%E5%B8%82&am_loc_time=1463225362814&count=30&min_time=1489205906&screen_width=1450&do00le_col_mode=1&iid=3216590132&device_id=32613520945&ac=wifi&channel=360&aid=7&app_name=joke_essay&version_code=612&version_name=6.1.2&device_platform=android&ssmix=a&device_type=sansung&device_brand=xiaomi&os_api=28&os_version=6.10.1&uuid=326135942187625&openudid=3dg6s95rhg2a3dg5&manifest_version_code=612&resolution=1450*2800&dpi=620&update_version_code=6120
 *
 * 段子
 * http://is.snssdk.com/neihan/stream/mix/v1/
 * ?mpic=1&webp=1&essence=1&content_type=-102&message_cursor=-1&am_longitude=110&am_latitude=120&am_city=%E5%8C%97%E4%BA%AC%E5%B8%82&am_loc_time=1489226058493&count=30&min_time=1489205901&screen_width=1450&do00le_col_mode=0&iid=3216590132&device_id=32613520945&ac=wifi&channel=360&aid=7&app_name=joke_essay&version_code=612&version_name=6.1.2&device_platform=android&ssmix=a&device_type=sansung&device_brand=xiaomi&os_api=28&os_version=6.10.1&uuid=326135942187625&openudid=3dg6s95rhg2a3dg5&manifest_version_code=612&resolution=1450*2800&dpi=620&update_version_code=6120
 *
 *
 */

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