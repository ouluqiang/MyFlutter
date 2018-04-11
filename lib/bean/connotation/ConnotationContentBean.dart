import 'package:json_annotation/json_annotation.dart';

part 'ConnotationContentBean.g.dart';

@JsonSerializable()
class ConnotationContentBean extends Object with _$ConnotationContentBeanSerializerMixin{

   String message;
   DataBeanX data;

   ConnotationContentBean({this.message,this.data});


   factory ConnotationContentBean.fromJson(Map<String, dynamic> json) => _$ConnotationContentBeanFromJson(json);

}






@JsonSerializable()
class DataBeanX extends Object with _$DataBeanXSerializerMixin{
  /**
   * has_more : true
   * tip : 20条新内容
   * has_new_message : false
   * max_time : 1.5223906758100002E9
   * min_time : 1522390676
   * data : [{"group":{"360p_video":{"width":652,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/31c580a4badd4db5bb492b3d047334af","height":368},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"这尼玛，我都懵逼了！","category_activity_start_time":1506222300,"720p_video":{"width":652,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/31c580a4badd4db5bb492b3d047334af","height":368},"digg_count":2788,"duration":64.852,"480p_video":{"width":652,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/31c580a4badd4db5bb492b3d047334af","height":368},"create_time":1519923285,"share_url":"http://m.neihanshequ.com/share/group/91785688893/?iid=0&app=joke_essay","go_detail_count":22548,"keywords":"","id":91785688893,"favorite_count":601,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p3.pstatp.com/large/69e9000d7588ea015ed5"},{"url":"http://pb9.pstatp.com/large/69e9000d7588ea015ed5"},{"url":"http://pb1.pstatp.com/large/69e9000d7588ea015ed5"}],"uri":"large/69e9000d7588ea015ed5"},"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"赶紧来参加活动领红包吧","user":{"is_living":false,"user_id":50248398279,"name":"HINY1999","followings":0,"user_verified":false,"ugc_count":217,"avatar_url":"http://wx.qlogo.cn/mmopen/Q3auHgzwzM5Ag373IJ7kI8Rib8P95v55Q30ONdEw0w8Xauw2pjInlWmryb2eRpUpy0GMUoTBKnqlVETvpy5298A/0","followers":180,"is_following":false,"is_pro_user":false,"medals":[{"count":2,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":1,"content":"这尼玛，我都懵逼了！","video_height":368,"comment_count":119,"id_str":"91785688893","media_type":3,"share_count":4168,"type":2,"category_id":65,"status":112,"has_comments":0,"publish_time":"","user_bury":0,"origin_video":{"width":652,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/31c580a4badd4db5bb492b3d047334af","height":368},"status_desc":"热门投稿","dislike_reason":[{"type":2,"id":65,"title":"吧:搞笑视频"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":50248398279,"title":"作者:HINY1999"}],"play_count":295966,"user_repin":0,"category_activity_end_time":1506355200,"medium_cover":{"url_list":[{"url":"http://p3.pstatp.com/w202/69e9000d7588ea015ed5"},{"url":"http://pb9.pstatp.com/w202/69e9000d7588ea015ed5"},{"url":"http://pb1.pstatp.com/w202/69e9000d7588ea015ed5"}],"uri":"medium/69e9000d7588ea015ed5"},"user_digg":0,"video_width":652,"online_time":1519923285,"category_name":"搞笑视频","flash_url":"","category_visible":true,"bury_count":399,"is_anonymous":false,"repin_count":601,"video_id":"31c580a4badd4db5bb492b3d047334af","uri":"31c580a4badd4db5bb492b3d047334af","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"69e9000d7588ea015ed5","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":91785688893,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[],"type":1,"display_time":1522390676,"online_time":1522390676},{"group":{"360p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31104f8e79f345b295d28812e9d89376&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31104f8e79f345b295d28812e9d89376&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/31104f8e79f345b295d28812e9d89376","height":854},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31104f8e79f345b295d28812e9d89376&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"最后一个牌子没看见。段友看你们的了。","category_activity_start_time":0,"720p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31104f8e79f345b295d28812e9d89376&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31104f8e79f345b295d28812e9d89376&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/31104f8e79f345b295d28812e9d89376","height":854},"digg_count":84308,"duration":5.04,"480p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31104f8e79f345b295d28812e9d89376&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31104f8e79f345b295d28812e9d89376&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/31104f8e79f345b295d28812e9d89376","height":854},"create_time":1520590289,"share_url":"http://m.neihanshequ.com/share/group/92207531353/?iid=0&app=joke_essay","go_detail_count":1541934,"keywords":"","id":92207531353,"favorite_count":1902,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p1.pstatp.com/large/6cd800008fa08a5a7194"},{"url":"http://pb3.pstatp.com/large/6cd800008fa08a5a7194"},{"url":"http://pb9.pstatp.com/large/6cd800008fa08a5a7194"}],"uri":"large/6cd800008fa08a5a7194"},"video_wh_ratio":1,"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"","user":{"is_living":false,"user_id":13275117735,"name":"i芈十四有","followings":0,"user_verified":false,"ugc_count":226,"avatar_url":"http://p1.pstatp.com/medium/658c00262877a088bc8e","followers":1080,"is_following":false,"is_pro_user":false,"medals":[{"count":27,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31104f8e79f345b295d28812e9d89376&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":1,"content":"最后一个牌子没看见。段友看你们的了。","video_height":854,"comment_count":2329,"id_str":"92207531353","media_type":3,"share_count":99345,"type":2,"category_id":280,"status":112,"has_comments":0,"publish_time":"","user_bury":0,"origin_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31104f8e79f345b295d28812e9d89376&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31104f8e79f345b295d28812e9d89376&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/31104f8e79f345b295d28812e9d89376","height":854},"status_desc":"热门投稿","dislike_reason":[{"type":1,"id":604,"title":"低俗"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":13275117735,"title":"作者:i芈十四有"}],"play_count":7593902,"user_repin":0,"category_activity_end_time":0,"medium_cover":{"url_list":[{"url":"http://p1.pstatp.com/w202/6cd800008fa08a5a7194"},{"url":"http://pb3.pstatp.com/w202/6cd800008fa08a5a7194"},{"url":"http://pb9.pstatp.com/w202/6cd800008fa08a5a7194"}],"uri":"medium/6cd800008fa08a5a7194"},"user_digg":0,"video_width":480,"online_time":1520590289,"category_name":"段友随手拍","flash_url":"","category_visible":false,"bury_count":4970,"is_anonymous":false,"repin_count":1902,"video_id":"31104f8e79f345b295d28812e9d89376","uri":"31104f8e79f345b295d28812e9d89376","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"6cd800008fa08a5a7194","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":92207531353,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[],"type":1,"display_time":1.52239067599E9,"online_time":1.52239067599E9},{"group":{"360p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=9d5717e25bfc4202b7b4444fc1169a32&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=9d5717e25bfc4202b7b4444fc1169a32&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/9d5717e25bfc4202b7b4444fc1169a32","height":854},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=9d5717e25bfc4202b7b4444fc1169a32&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"我有你睡觉的视频","category_activity_start_time":0,"720p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=9d5717e25bfc4202b7b4444fc1169a32&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=9d5717e25bfc4202b7b4444fc1169a32&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/9d5717e25bfc4202b7b4444fc1169a32","height":854},"digg_count":13049,"duration":11.55,"480p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=9d5717e25bfc4202b7b4444fc1169a32&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=9d5717e25bfc4202b7b4444fc1169a32&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/9d5717e25bfc4202b7b4444fc1169a32","height":854},"create_time":1522297236,"share_url":"http://m.neihanshequ.com/share/group/93371069783/?iid=0&app=joke_essay","go_detail_count":31586,"keywords":"","id":93371069783,"favorite_count":4151,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p3.pstatp.com/large/7413000e918c0c74d981"},{"url":"http://pb9.pstatp.com/large/7413000e918c0c74d981"},{"url":"http://pb1.pstatp.com/large/7413000e918c0c74d981"}],"uri":"large/7413000e918c0c74d981"},"video_wh_ratio":1,"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"","user":{"is_living":false,"user_id":52564185164,"name":"给自己寄封情书","followings":0,"user_verified":false,"ugc_count":895,"avatar_url":"http://p3.pstatp.com/medium/71a10011000af0006995","followers":47603,"is_following":false,"is_pro_user":false,"medals":[{"count":595,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":2,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=9d5717e25bfc4202b7b4444fc1169a32&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":1,"content":"我有你睡觉的视频","video_height":854,"comment_count":188,"id_str":"93371069783","media_type":3,"share_count":6720,"type":2,"category_id":45,"status":112,"has_comments":1,"publish_time":"","user_bury":0,"origin_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=9d5717e25bfc4202b7b4444fc1169a32&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=9d5717e25bfc4202b7b4444fc1169a32&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/9d5717e25bfc4202b7b4444fc1169a32","height":854},"status_desc":"热门投稿","dislike_reason":[{"type":2,"id":45,"title":"吧:萌物出没"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":52564185164,"title":"作者:给自己寄封情书"}],"play_count":756881,"user_repin":0,"category_activity_end_time":0,"medium_cover":{"url_list":[{"url":"http://p3.pstatp.com/w202/7413000e918c0c74d981"},{"url":"http://pb9.pstatp.com/w202/7413000e918c0c74d981"},{"url":"http://pb1.pstatp.com/w202/7413000e918c0c74d981"}],"uri":"medium/7413000e918c0c74d981"},"user_digg":0,"video_width":480,"online_time":1522297236,"category_name":"萌物出没","flash_url":"","category_visible":true,"bury_count":146,"is_anonymous":false,"repin_count":4151,"video_id":"9d5717e25bfc4202b7b4444fc1169a32","uri":"9d5717e25bfc4202b7b4444fc1169a32","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"7413000e918c0c74d981","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":93371069783,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[{"text":"金华火腿，肉质松软，怎么切也切不开，轻轻一抓，不行，它还会咬人。","create_time":1522371651,"user_verified":false,"user_bury":0,"user_id":6016262870,"bury_count":0,"share_url":"http://m.neihanshequ.com/share/group/93371069783/?comment_id=1596322376643598","id":1596322376643598,"platform":"feifei","is_digg":0,"user_name":"瑞雪75968987","user_profile_image_url":"http://p1.pstatp.com/thumb/71a1001b60271e69cb5b","medals":[{"count":4,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"},{"count":1,"icon_url":"http://p3.pstatp.com/obj/3b640009efd3397c45e2","name":"god_comment","small_icon_url":"http://p1.pstatp.com/obj/39f2000b4a7229fc36eb"}],"status":5,"description":"","comment_id":1596322376643598,"user_digg":0,"user_profile_url":"","share_type":1,"digg_count":6147,"is_pro_user":false,"platform_id":"feifei","avatar_url":"http://p1.pstatp.com/thumb/71a1001b60271e69cb5b","group_id":93371069783}],"type":1,"display_time":1.52239067598E9,"online_time":1.52239067598E9},{"group":{"360p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=e6b32ab188764a5380eb2fe7f969132d&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=e6b32ab188764a5380eb2fe7f969132d&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/e6b32ab188764a5380eb2fe7f969132d","height":854},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=e6b32ab188764a5380eb2fe7f969132d&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"刀郎没有骗我们，这个图谁看懂了 报个到","category_activity_start_time":0,"720p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=e6b32ab188764a5380eb2fe7f969132d&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=e6b32ab188764a5380eb2fe7f969132d&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/e6b32ab188764a5380eb2fe7f969132d","height":854},"digg_count":19374,"duration":10.123,"480p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=e6b32ab188764a5380eb2fe7f969132d&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=e6b32ab188764a5380eb2fe7f969132d&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/e6b32ab188764a5380eb2fe7f969132d","height":854},"create_time":1522054732,"share_url":"http://m.neihanshequ.com/share/group/93237818603/?iid=0&app=joke_essay","go_detail_count":234165,"keywords":"","id":93237818603,"favorite_count":1122,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p3.pstatp.com/large/73590011170516b97a35"},{"url":"http://pb9.pstatp.com/large/73590011170516b97a35"},{"url":"http://pb1.pstatp.com/large/73590011170516b97a35"}],"uri":"large/73590011170516b97a35"},"video_wh_ratio":1,"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"","user":{"is_living":false,"user_id":6995566841,"name":"水太多一揉就进","followings":0,"user_verified":false,"ugc_count":225,"avatar_url":"http://p1.pstatp.com/medium/5404000dfd54aa2d3dd9","followers":2878,"is_following":false,"is_pro_user":false,"medals":[{"count":16,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=e6b32ab188764a5380eb2fe7f969132d&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":1,"content":"刀郎没有骗我们，这个图谁看懂了 报个到","video_height":854,"comment_count":1129,"id_str":"93237818603","media_type":3,"share_count":1593,"type":2,"category_id":280,"status":112,"has_comments":1,"publish_time":"","user_bury":0,"origin_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=e6b32ab188764a5380eb2fe7f969132d&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=e6b32ab188764a5380eb2fe7f969132d&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/e6b32ab188764a5380eb2fe7f969132d","height":854},"status_desc":"热门投稿","dislike_reason":[{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":6995566841,"title":"作者:水太多一揉就进"}],"play_count":1406885,"user_repin":0,"category_activity_end_time":0,"medium_cover":{"url_list":[{"url":"http://p3.pstatp.com/w202/73590011170516b97a35"},{"url":"http://pb9.pstatp.com/w202/73590011170516b97a35"},{"url":"http://pb1.pstatp.com/w202/73590011170516b97a35"}],"uri":"medium/73590011170516b97a35"},"user_digg":0,"video_width":480,"online_time":1522054732,"category_name":"段友随手拍","flash_url":"","category_visible":false,"bury_count":251,"is_anonymous":false,"repin_count":1122,"video_id":"e6b32ab188764a5380eb2fe7f969132d","uri":"e6b32ab188764a5380eb2fe7f969132d","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"73590011170516b97a35","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":93237818603,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[{"text":"停靠在八楼的二路汽车","create_time":1522062268,"user_verified":false,"user_bury":0,"user_id":6379289989,"bury_count":0,"share_url":"http://m.neihanshequ.com/share/group/93237818603/?comment_id=1595997964837892","id":1595997964837892,"platform":"feifei","is_digg":0,"user_name":"一路孤影相伴","user_profile_image_url":"http://p1.pstatp.com/thumb/71a0000e9f7e06b5a8e8","medals":[{"count":1,"icon_url":"http://p3.pstatp.com/obj/3b640009efd3397c45e2","name":"god_comment","small_icon_url":"http://p1.pstatp.com/obj/39f2000b4a7229fc36eb"}],"status":5,"description":"","comment_id":1595997964837892,"user_digg":0,"user_profile_url":"","share_type":1,"digg_count":16685,"is_pro_user":false,"platform_id":"feifei","avatar_url":"http://p1.pstatp.com/thumb/71a0000e9f7e06b5a8e8","group_id":93237818603}],"type":1,"display_time":1.52239067597E9,"online_time":1.52239067597E9},{"group":{"360p_video":{"width":846,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=a75d13fcd3ab4eea8082aa5004d70f0e&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=a75d13fcd3ab4eea8082aa5004d70f0e&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/a75d13fcd3ab4eea8082aa5004d70f0e","height":480},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=a75d13fcd3ab4eea8082aa5004d70f0e&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"一直点暂停，你会谢我的","category_activity_start_time":0,"720p_video":{"width":846,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=a75d13fcd3ab4eea8082aa5004d70f0e&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=a75d13fcd3ab4eea8082aa5004d70f0e&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/a75d13fcd3ab4eea8082aa5004d70f0e","height":480},"digg_count":64135,"duration":10.01,"480p_video":{"width":846,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=a75d13fcd3ab4eea8082aa5004d70f0e&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=a75d13fcd3ab4eea8082aa5004d70f0e&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/a75d13fcd3ab4eea8082aa5004d70f0e","height":480},"create_time":1521252739,"share_url":"http://m.neihanshequ.com/share/group/92719647963/?iid=0&app=joke_essay","go_detail_count":1362174,"keywords":"","id":92719647963,"favorite_count":7213,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p1.pstatp.com/large/6e96000cc08626c3aab7"},{"url":"http://pb3.pstatp.com/large/6e96000cc08626c3aab7"},{"url":"http://pb9.pstatp.com/large/6e96000cc08626c3aab7"}],"uri":"large/6e96000cc08626c3aab7"},"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"","user":{"is_living":false,"user_id":5898536473,"name":"半城繁华半城伤70732916","followings":0,"user_verified":false,"ugc_count":7,"avatar_url":"http://p1.pstatp.com/medium/5047001792b533b2ebca","followers":269,"is_following":false,"is_pro_user":false,"medals":[{"count":1,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=a75d13fcd3ab4eea8082aa5004d70f0e&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":1,"content":"一直点暂停，你会谢我的","video_height":480,"comment_count":2336,"id_str":"92719647963","media_type":3,"share_count":255282,"type":2,"category_id":47132,"status":112,"has_comments":0,"publish_time":"","user_bury":0,"origin_video":{"width":846,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=a75d13fcd3ab4eea8082aa5004d70f0e&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=a75d13fcd3ab4eea8082aa5004d70f0e&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/a75d13fcd3ab4eea8082aa5004d70f0e","height":480},"status_desc":"热门投稿","dislike_reason":[{"type":1,"id":604,"title":"低俗"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":5898536473,"title":"作者:半城繁华半城伤70732916"}],"play_count":3972912,"user_repin":0,"category_activity_end_time":0,"medium_cover":{"url_list":[{"url":"http://p1.pstatp.com/w202/6e96000cc08626c3aab7"},{"url":"http://pb3.pstatp.com/w202/6e96000cc08626c3aab7"},{"url":"http://pb9.pstatp.com/w202/6e96000cc08626c3aab7"}],"uri":"medium/6e96000cc08626c3aab7"},"user_digg":0,"video_width":846,"online_time":1521252739,"category_name":"过分了啊","flash_url":"","category_visible":false,"bury_count":5088,"is_anonymous":false,"repin_count":7213,"video_id":"a75d13fcd3ab4eea8082aa5004d70f0e","uri":"a75d13fcd3ab4eea8082aa5004d70f0e","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"6e96000cc08626c3aab7","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":92719647963,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[],"type":1,"display_time":1.52239067596E9,"online_time":1.52239067596E9},{"group":{"360p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=ea8fb32b56114884ae299cc096402b8a&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=ea8fb32b56114884ae299cc096402b8a&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/ea8fb32b56114884ae299cc096402b8a","height":854},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=ea8fb32b56114884ae299cc096402b8a&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"","category_activity_start_time":0,"720p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=ea8fb32b56114884ae299cc096402b8a&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=ea8fb32b56114884ae299cc096402b8a&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/ea8fb32b56114884ae299cc096402b8a","height":854},"digg_count":3237,"duration":57.611,"480p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=ea8fb32b56114884ae299cc096402b8a&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=ea8fb32b56114884ae299cc096402b8a&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/ea8fb32b56114884ae299cc096402b8a","height":854},"create_time":1521344108,"share_url":"http://m.neihanshequ.com/share/group/92787771603/?iid=0&app=joke_essay","go_detail_count":11560,"keywords":"","id":92787771603,"favorite_count":474,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p3.pstatp.com/large/6fc9000e4bc9603b13f6"},{"url":"http://pb9.pstatp.com/large/6fc9000e4bc9603b13f6"},{"url":"http://pb1.pstatp.com/large/6fc9000e4bc9603b13f6"}],"uri":"large/6fc9000e4bc9603b13f6"},"video_wh_ratio":1,"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"","user":{"is_living":false,"user_id":84912567455,"name":"平凡世界723","followings":0,"user_verified":false,"ugc_count":657,"avatar_url":"http://p3.pstatp.com/medium/54e9001d0aa187a615e4","followers":1586,"is_following":false,"is_pro_user":false,"medals":[{"count":23,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=ea8fb32b56114884ae299cc096402b8a&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":4,"content":"","video_height":854,"comment_count":49,"id_str":"92787771603","media_type":3,"share_count":5606,"type":2,"category_id":258356,"status":102,"has_comments":0,"publish_time":"","user_bury":0,"origin_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=ea8fb32b56114884ae299cc096402b8a&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=ea8fb32b56114884ae299cc096402b8a&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/ea8fb32b56114884ae299cc096402b8a","height":854},"status_desc":"已发表","dislike_reason":[{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":84912567455,"title":"作者:平凡世界723"}],"play_count":326791,"user_repin":0,"category_activity_end_time":0,"medium_cover":{"url_list":[{"url":"http://p3.pstatp.com/w202/6fc9000e4bc9603b13f6"},{"url":"http://pb9.pstatp.com/w202/6fc9000e4bc9603b13f6"},{"url":"http://pb1.pstatp.com/w202/6fc9000e4bc9603b13f6"}],"uri":"medium/6fc9000e4bc9603b13f6"},"user_digg":0,"video_width":480,"online_time":1521344108,"category_name":"搞笑先锋视频段子合集","flash_url":"","category_visible":false,"bury_count":662,"is_anonymous":false,"repin_count":474,"video_id":"ea8fb32b56114884ae299cc096402b8a","uri":"ea8fb32b56114884ae299cc096402b8a","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"6fc9000e4bc9603b13f6","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":92787771603,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[],"type":1,"display_time":1.52239067595E9,"online_time":1.52239067595E9},{"group":{"360p_video":{"width":854,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=84cbf0633a894e9ab1895a6cdc91aeb4&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=84cbf0633a894e9ab1895a6cdc91aeb4&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/84cbf0633a894e9ab1895a6cdc91aeb4","height":480},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=84cbf0633a894e9ab1895a6cdc91aeb4&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"看见男友和别人在床上，女孩含泪离去\u2026\u2026","category_activity_start_time":0,"720p_video":{"width":854,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=84cbf0633a894e9ab1895a6cdc91aeb4&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=84cbf0633a894e9ab1895a6cdc91aeb4&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/84cbf0633a894e9ab1895a6cdc91aeb4","height":480},"digg_count":5062,"duration":48.158,"480p_video":{"width":854,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=84cbf0633a894e9ab1895a6cdc91aeb4&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=84cbf0633a894e9ab1895a6cdc91aeb4&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/84cbf0633a894e9ab1895a6cdc91aeb4","height":480},"create_time":1522288953,"share_url":"http://m.neihanshequ.com/share/group/93364862253/?iid=0&app=joke_essay","go_detail_count":31692,"keywords":"","id":93364862253,"favorite_count":388,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p3.pstatp.com/large/740f0001773d13f2baf5"},{"url":"http://pb9.pstatp.com/large/740f0001773d13f2baf5"},{"url":"http://pb1.pstatp.com/large/740f0001773d13f2baf5"}],"uri":"large/740f0001773d13f2baf5"},"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"","user":{"is_living":false,"user_id":80709557580,"name":"牜牜的凤姐","followings":0,"user_verified":false,"ugc_count":867,"avatar_url":"http://p9.pstatp.com/medium/71a2000a136536cd04b4","followers":8168,"is_following":false,"is_pro_user":false,"medals":[{"count":180,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=84cbf0633a894e9ab1895a6cdc91aeb4&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":1,"content":"看见男友和别人在床上，女孩含泪离去\u2026\u2026","video_height":480,"comment_count":240,"id_str":"93364862253","media_type":3,"share_count":1420,"type":2,"category_id":253,"status":112,"has_comments":1,"publish_time":"","user_bury":0,"origin_video":{"width":854,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=84cbf0633a894e9ab1895a6cdc91aeb4&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=84cbf0633a894e9ab1895a6cdc91aeb4&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/84cbf0633a894e9ab1895a6cdc91aeb4","height":480},"status_desc":"热门投稿","dislike_reason":[{"type":1,"id":604,"title":"低俗"},{"type":2,"id":253,"title":"吧:情感视频"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":80709557580,"title":"作者:牜牜的凤姐"}],"play_count":407943,"user_repin":0,"category_activity_end_time":0,"medium_cover":{"url_list":[{"url":"http://p3.pstatp.com/w202/740f0001773d13f2baf5"},{"url":"http://pb9.pstatp.com/w202/740f0001773d13f2baf5"},{"url":"http://pb1.pstatp.com/w202/740f0001773d13f2baf5"}],"uri":"medium/740f0001773d13f2baf5"},"user_digg":0,"video_width":854,"online_time":1522288953,"category_name":"情感视频","flash_url":"","category_visible":true,"bury_count":284,"is_anonymous":false,"repin_count":388,"video_id":"84cbf0633a894e9ab1895a6cdc91aeb4","uri":"84cbf0633a894e9ab1895a6cdc91aeb4","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"740f0001773d13f2baf5","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":93364862253,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[{"text":"就服她跑下去的时候还不忘记捡起衣服","create_time":1522365807,"user_verified":false,"user_bury":0,"user_id":26039380481,"bury_count":0,"share_url":"http://m.neihanshequ.com/share/group/93364862253/?comment_id=1596316248317960","id":1596316248317960,"platform":"feifei","is_digg":0,"user_name":"诗和远方161...","user_profile_image_url":"http://p3.pstatp.com/thumb/1bf7000fccd6f5b18fed","medals":[{"count":3,"icon_url":"http://p3.pstatp.com/obj/3b640009efd3397c45e2","name":"god_comment","small_icon_url":"http://p1.pstatp.com/obj/39f2000b4a7229fc36eb"}],"status":5,"description":"","comment_id":1596316248317960,"user_digg":0,"user_profile_url":"","share_type":1,"digg_count":386,"is_pro_user":false,"platform_id":"feifei","avatar_url":"http://p3.pstatp.com/thumb/1bf7000fccd6f5b18fed","group_id":93364862253}],"type":1,"display_time":1.52239067594E9,"online_time":1.52239067594E9},{"group":{"360p_video":{"width":400,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=61323992d0ad435ebb63efe7a209601c&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=61323992d0ad435ebb63efe7a209601c&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/61323992d0ad435ebb63efe7a209601c","height":400},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=61323992d0ad435ebb63efe7a209601c&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"胆肥了！","category_activity_start_time":1506222300,"720p_video":{"width":400,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=61323992d0ad435ebb63efe7a209601c&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=61323992d0ad435ebb63efe7a209601c&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/61323992d0ad435ebb63efe7a209601c","height":400},"digg_count":6,"duration":16.251,"480p_video":{"width":400,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=61323992d0ad435ebb63efe7a209601c&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=61323992d0ad435ebb63efe7a209601c&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/61323992d0ad435ebb63efe7a209601c","height":400},"create_time":1522390510,"share_url":"http://m.neihanshequ.com/share/group/93432589243/?iid=0&app=joke_essay","go_detail_count":0,"keywords":"","id":93432589243,"favorite_count":0,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p1.pstatp.com/large/74620005bdc7c52b78ba"},{"url":"http://pb3.pstatp.com/large/74620005bdc7c52b78ba"},{"url":"http://pb9.pstatp.com/large/74620005bdc7c52b78ba"}],"uri":"large/74620005bdc7c52b78ba"},"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"赶紧来参加活动领红包吧","user":{"is_living":false,"user_id":67026847311,"name":"小伟微博204685022","followings":0,"user_verified":false,"ugc_count":4192,"avatar_url":"http://p1.pstatp.com/medium/383000002ebb63707b49","followers":236,"is_following":false,"is_pro_user":false,"medals":[{"count":15,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=61323992d0ad435ebb63efe7a209601c&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":4,"content":"胆肥了！","video_height":400,"comment_count":0,"id_str":"93432589243","media_type":3,"share_count":0,"type":2,"category_id":65,"status":140,"has_comments":0,"publish_time":"","user_bury":0,"origin_video":{"width":400,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=61323992d0ad435ebb63efe7a209601c&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=61323992d0ad435ebb63efe7a209601c&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/61323992d0ad435ebb63efe7a209601c","height":400},"status_desc":"已发表","dislike_reason":[{"type":2,"id":65,"title":"吧:搞笑视频"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":67026847311,"title":"作者:小伟微博204685022"}],"play_count":15,"user_repin":0,"category_activity_end_time":1506355200,"medium_cover":{"url_list":[{"url":"http://p1.pstatp.com/w202/74620005bdc7c52b78ba"},{"url":"http://pb3.pstatp.com/w202/74620005bdc7c52b78ba"},{"url":"http://pb9.pstatp.com/w202/74620005bdc7c52b78ba"}],"uri":"medium/74620005bdc7c52b78ba"},"user_digg":0,"video_width":400,"online_time":1522390510,"category_name":"搞笑视频","flash_url":"","category_visible":true,"bury_count":0,"is_anonymous":false,"repin_count":0,"video_id":"61323992d0ad435ebb63efe7a209601c","uri":"61323992d0ad435ebb63efe7a209601c","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"74620005bdc7c52b78ba","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":93432589243,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[],"type":1,"display_time":1.52239067593E9,"online_time":1.52239067593E9},{"group":{"360p_video":{"width":360,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4bc3a003e3674e7ab771aa98e7222499&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4bc3a003e3674e7ab771aa98e7222499&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/4bc3a003e3674e7ab771aa98e7222499","height":480},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4bc3a003e3674e7ab771aa98e7222499&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"抓着会怎样","category_activity_start_time":0,"720p_video":{"width":360,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4bc3a003e3674e7ab771aa98e7222499&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4bc3a003e3674e7ab771aa98e7222499&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/4bc3a003e3674e7ab771aa98e7222499","height":480},"digg_count":68427,"duration":210.718,"480p_video":{"width":360,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4bc3a003e3674e7ab771aa98e7222499&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4bc3a003e3674e7ab771aa98e7222499&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/4bc3a003e3674e7ab771aa98e7222499","height":480},"create_time":1515822011,"share_url":"http://m.neihanshequ.com/share/group/85792977503/?iid=0&app=joke_essay","go_detail_count":796339,"keywords":"","id":85792977503,"favorite_count":16494,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p9.pstatp.com/large/57d3000616d55f5cccb0"},{"url":"http://pb1.pstatp.com/large/57d3000616d55f5cccb0"},{"url":"http://pb3.pstatp.com/large/57d3000616d55f5cccb0"}],"uri":"large/57d3000616d55f5cccb0"},"video_wh_ratio":1,"category_activity_schema_url":"","user_favorite":0,"share_type":1,"title":"","category_activity_text":"","user":{"is_living":false,"user_id":52661150297,"name":"镗鼞","followings":0,"user_verified":false,"ugc_count":711,"avatar_url":"http://p3.pstatp.com/medium/1bf6000e31803d67e91c","followers":7170,"is_following":false,"is_pro_user":false,"medals":[{"count":71,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"},{"count":2,"icon_url":"http://p3.pstatp.com/obj/3b640009efd3397c45e2","name":"god_comment","small_icon_url":"http://p1.pstatp.com/obj/39f2000b4a7229fc36eb"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4bc3a003e3674e7ab771aa98e7222499&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":4,"content":"抓着会怎样","video_height":480,"comment_count":5210,"id_str":"85792977503","media_type":3,"share_count":84571,"type":2,"category_id":273,"status":102,"has_comments":0,"publish_time":"","user_bury":0,"origin_video":{"width":360,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4bc3a003e3674e7ab771aa98e7222499&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4bc3a003e3674e7ab771aa98e7222499&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/4bc3a003e3674e7ab771aa98e7222499","height":480},"status_desc":"已发表","dislike_reason":[{"type":1,"id":649,"title":"段友"},{"type":2,"id":273,"title":"吧:段友真会玩儿"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":52661150297,"title":"作者:镗鼞"}],"play_count":4770584,"user_repin":0,"category_activity_end_time":0,"medium_cover":{"url_list":[{"url":"http://p9.pstatp.com/w202/57d3000616d55f5cccb0"},{"url":"http://pb1.pstatp.com/w202/57d3000616d55f5cccb0"},{"url":"http://pb3.pstatp.com/w202/57d3000616d55f5cccb0"}],"uri":"medium/57d3000616d55f5cccb0"},"user_digg":0,"video_width":360,"online_time":1515822011,"category_name":"段友真会玩儿","flash_url":"","category_visible":true,"bury_count":22459,"is_anonymous":false,"repin_count":16494,"video_id":"4bc3a003e3674e7ab771aa98e7222499","uri":"4bc3a003e3674e7ab771aa98e7222499","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"57d3000616d55f5cccb0","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":85792977503,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[],"type":1,"display_time":1.52239067592E9,"online_time":1.52239067592E9},{"group":{"360p_video":{"width":854,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=3d87aa14e37845f49b7fdaca596ffea9&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=3d87aa14e37845f49b7fdaca596ffea9&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/3d87aa14e37845f49b7fdaca596ffea9","height":480},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=3d87aa14e37845f49b7fdaca596ffea9&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"还抽烟不？","category_activity_start_time":0,"720p_video":{"width":854,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=3d87aa14e37845f49b7fdaca596ffea9&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=3d87aa14e37845f49b7fdaca596ffea9&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/3d87aa14e37845f49b7fdaca596ffea9","height":480},"digg_count":308970,"duration":110.579,"480p_video":{"width":854,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=3d87aa14e37845f49b7fdaca596ffea9&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=3d87aa14e37845f49b7fdaca596ffea9&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/3d87aa14e37845f49b7fdaca596ffea9","height":480},"create_time":1517925101,"share_url":"http://m.neihanshequ.com/share/group/90482117493/?iid=0&app=joke_essay","go_detail_count":3124436,"keywords":"","id":90482117493,"favorite_count":103527,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p1.pstatp.com/large/6088001607dd27d00de3"},{"url":"http://pb3.pstatp.com/large/6088001607dd27d00de3"},{"url":"http://pb9.pstatp.com/large/6088001607dd27d00de3"}],"uri":"large/6088001607dd27d00de3"},"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"","user":{"is_living":false,"user_id":84536157064,"name":"钰豆儿","followings":0,"user_verified":false,"ugc_count":250,"avatar_url":"http://p3.pstatp.com/medium/658e00071c1f0ec7b14f","followers":5039,"is_following":false,"is_pro_user":false,"medals":[{"count":12,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=3d87aa14e37845f49b7fdaca596ffea9&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":1,"content":"还抽烟不？","video_height":480,"comment_count":61852,"id_str":"90482117493","media_type":3,"share_count":279428,"type":2,"category_id":252,"status":112,"has_comments":0,"publish_time":"","user_bury":0,"origin_video":{"width":854,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=3d87aa14e37845f49b7fdaca596ffea9&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=3d87aa14e37845f49b7fdaca596ffea9&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/3d87aa14e37845f49b7fdaca596ffea9","height":480},"status_desc":"热门投稿","dislike_reason":[{"type":2,"id":252,"title":"吧:科技视频"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":84536157064,"title":"作者:钰豆儿"}],"play_count":15809746,"user_repin":0,"category_activity_end_time":0,"medium_cover":{"url_list":[{"url":"http://p1.pstatp.com/w202/6088001607dd27d00de3"},{"url":"http://pb3.pstatp.com/w202/6088001607dd27d00de3"},{"url":"http://pb9.pstatp.com/w202/6088001607dd27d00de3"}],"uri":"medium/6088001607dd27d00de3"},"user_digg":0,"video_width":854,"online_time":1517925101,"category_name":"科技视频","flash_url":"","category_visible":true,"bury_count":23548,"is_anonymous":false,"repin_count":103527,"video_id":"3d87aa14e37845f49b7fdaca596ffea9","uri":"3d87aa14e37845f49b7fdaca596ffea9","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"6088001607dd27d00de3","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":90482117493,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[],"type":1,"display_time":1.52239067591E9,"online_time":1.52239067591E9},{"group":{"360p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c3388f0f644d4a37be61b35ecc4519d7&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c3388f0f644d4a37be61b35ecc4519d7&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/c3388f0f644d4a37be61b35ecc4519d7","height":480},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c3388f0f644d4a37be61b35ecc4519d7&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"麻烦帮我截一个最猥琐的图。","category_activity_start_time":0,"720p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c3388f0f644d4a37be61b35ecc4519d7&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c3388f0f644d4a37be61b35ecc4519d7&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/c3388f0f644d4a37be61b35ecc4519d7","height":480},"digg_count":2960,"duration":10,"480p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c3388f0f644d4a37be61b35ecc4519d7&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c3388f0f644d4a37be61b35ecc4519d7&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/c3388f0f644d4a37be61b35ecc4519d7","height":480},"create_time":1520945667,"share_url":"http://m.neihanshequ.com/share/group/92487414163/?iid=0&app=joke_essay","go_detail_count":142886,"keywords":"","id":92487414163,"favorite_count":1591,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p1.pstatp.com/large/6dda0007162b9912e5a0"},{"url":"http://pb3.pstatp.com/large/6dda0007162b9912e5a0"},{"url":"http://pb9.pstatp.com/large/6dda0007162b9912e5a0"}],"uri":"large/6dda0007162b9912e5a0"},"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"","user":{"is_living":false,"user_id":85608818272,"name":"___煙菋701","followings":0,"user_verified":false,"ugc_count":138,"avatar_url":"http://p1.pstatp.com/medium/658c003165664204459d","followers":107,"is_following":false,"is_pro_user":false,"medals":[{"count":2,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c3388f0f644d4a37be61b35ecc4519d7&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":4,"content":"麻烦帮我截一个最猥琐的图。","video_height":480,"comment_count":225,"id_str":"92487414163","media_type":3,"share_count":928,"type":2,"category_id":47132,"status":102,"has_comments":0,"publish_time":"","user_bury":0,"origin_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c3388f0f644d4a37be61b35ecc4519d7&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c3388f0f644d4a37be61b35ecc4519d7&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/c3388f0f644d4a37be61b35ecc4519d7","height":480},"status_desc":"已发表","dislike_reason":[{"type":1,"id":604,"title":"低俗"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":85608818272,"title":"作者:___煙菋701"}],"play_count":624213,"user_repin":0,"category_activity_end_time":0,"medium_cover":{"url_list":[{"url":"http://p1.pstatp.com/w202/6dda0007162b9912e5a0"},{"url":"http://pb3.pstatp.com/w202/6dda0007162b9912e5a0"},{"url":"http://pb9.pstatp.com/w202/6dda0007162b9912e5a0"}],"uri":"medium/6dda0007162b9912e5a0"},"user_digg":0,"video_width":480,"online_time":1520945667,"category_name":"过分了啊","flash_url":"","category_visible":false,"bury_count":172,"is_anonymous":false,"repin_count":1591,"video_id":"c3388f0f644d4a37be61b35ecc4519d7","uri":"c3388f0f644d4a37be61b35ecc4519d7","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"6dda0007162b9912e5a0","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":92487414163,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[],"type":1,"display_time":1.5223906759E9,"online_time":1.5223906759E9},{"group":{"360p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=823e5a02da2f4b6aae06383b83b7739a&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=823e5a02da2f4b6aae06383b83b7739a&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/823e5a02da2f4b6aae06383b83b7739a","height":640},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=823e5a02da2f4b6aae06383b83b7739a&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"发给你喜欢的人吧？","category_activity_start_time":0,"720p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=823e5a02da2f4b6aae06383b83b7739a&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=823e5a02da2f4b6aae06383b83b7739a&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/823e5a02da2f4b6aae06383b83b7739a","height":640},"digg_count":5412,"duration":23.04,"480p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=823e5a02da2f4b6aae06383b83b7739a&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=823e5a02da2f4b6aae06383b83b7739a&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/823e5a02da2f4b6aae06383b83b7739a","height":640},"create_time":1515407041,"share_url":"http://m.neihanshequ.com/share/group/84966086753/?iid=0&app=joke_essay","go_detail_count":12526,"keywords":"","id":84966086753,"favorite_count":2099,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p9.pstatp.com/large/5621000b794e9ebb0e07"},{"url":"http://pb1.pstatp.com/large/5621000b794e9ebb0e07"},{"url":"http://pb3.pstatp.com/large/5621000b794e9ebb0e07"}],"uri":"large/5621000b794e9ebb0e07"},"video_wh_ratio":1,"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"","user":{"is_living":false,"user_id":5824132856,"name":"Iloveyoumalianjiang","followings":0,"user_verified":false,"ugc_count":50,"avatar_url":"http://p3.pstatp.com/medium/5872001440aba892cb10","followers":188,"is_following":false,"is_pro_user":false,"medals":[{"count":4,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=823e5a02da2f4b6aae06383b83b7739a&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":1,"content":"发给你喜欢的人吧？","video_height":640,"comment_count":105,"id_str":"84966086753","media_type":3,"share_count":11368,"type":2,"category_id":253,"status":112,"has_comments":0,"publish_time":"","user_bury":0,"origin_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=823e5a02da2f4b6aae06383b83b7739a&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=823e5a02da2f4b6aae06383b83b7739a&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/823e5a02da2f4b6aae06383b83b7739a","height":640},"status_desc":"热门投稿","dislike_reason":[{"type":1,"id":386,"title":"情感"},{"type":2,"id":253,"title":"吧:情感视频"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":5824132856,"title":"作者:Iloveyoumalianjiang"}],"play_count":361367,"user_repin":0,"category_activity_end_time":0,"medium_cover":{"url_list":[{"url":"http://p9.pstatp.com/w202/5621000b794e9ebb0e07"},{"url":"http://pb1.pstatp.com/w202/5621000b794e9ebb0e07"},{"url":"http://pb3.pstatp.com/w202/5621000b794e9ebb0e07"}],"uri":"medium/5621000b794e9ebb0e07"},"user_digg":0,"video_width":480,"online_time":1515407041,"category_name":"情感视频","flash_url":"","category_visible":true,"bury_count":266,"is_anonymous":false,"repin_count":2099,"video_id":"823e5a02da2f4b6aae06383b83b7739a","uri":"823e5a02da2f4b6aae06383b83b7739a","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"5621000b794e9ebb0e07","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":84966086753,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[],"type":1,"display_time":1.52239067589E9,"online_time":1.52239067589E9},{"group":{"360p_video":{"width":638,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=2990ce2b4efd4b1596df9e442f1b211d&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=2990ce2b4efd4b1596df9e442f1b211d&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/2990ce2b4efd4b1596df9e442f1b211d","height":358},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=2990ce2b4efd4b1596df9e442f1b211d&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"特朗普把安倍晋三 玩于掌中","category_activity_start_time":1506222300,"720p_video":{"width":638,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=2990ce2b4efd4b1596df9e442f1b211d&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=2990ce2b4efd4b1596df9e442f1b211d&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/2990ce2b4efd4b1596df9e442f1b211d","height":358},"digg_count":8295,"duration":10.123,"480p_video":{"width":638,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=2990ce2b4efd4b1596df9e442f1b211d&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=2990ce2b4efd4b1596df9e442f1b211d&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/2990ce2b4efd4b1596df9e442f1b211d","height":358},"create_time":1520470223,"share_url":"http://m.neihanshequ.com/share/group/92136381193/?iid=0&app=joke_essay","go_detail_count":159238,"keywords":"","id":92136381193,"favorite_count":335,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p3.pstatp.com/large/6b6d000a4eef7a73bd72"},{"url":"http://pb9.pstatp.com/large/6b6d000a4eef7a73bd72"},{"url":"http://pb1.pstatp.com/large/6b6d000a4eef7a73bd72"}],"uri":"large/6b6d000a4eef7a73bd72"},"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"赶紧来参加活动领红包吧","user":{"is_living":false,"user_id":77706342800,"name":"LaFerrari34","followings":0,"user_verified":false,"ugc_count":267,"avatar_url":"http://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJYfpsL820SkznP3qMaN6FPytMEibRSQa4Tb9G13oLfibFu6P5aPzYuHHcAzcFdgyiaqCcwqtpLwxp2w/0","followers":763,"is_following":false,"is_pro_user":false,"medals":[{"count":27,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=2990ce2b4efd4b1596df9e442f1b211d&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":4,"content":"特朗普把安倍晋三 玩于掌中","video_height":358,"comment_count":195,"id_str":"92136381193","media_type":3,"share_count":915,"type":2,"category_id":65,"status":102,"has_comments":0,"publish_time":"","user_bury":0,"origin_video":{"width":638,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=2990ce2b4efd4b1596df9e442f1b211d&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=2990ce2b4efd4b1596df9e442f1b211d&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/2990ce2b4efd4b1596df9e442f1b211d","height":358},"status_desc":"已发表","dislike_reason":[{"type":2,"id":65,"title":"吧:搞笑视频"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":77706342800,"title":"作者:LaFerrari34"}],"play_count":574706,"user_repin":0,"category_activity_end_time":1506355200,"medium_cover":{"url_list":[{"url":"http://p3.pstatp.com/w202/6b6d000a4eef7a73bd72"},{"url":"http://pb9.pstatp.com/w202/6b6d000a4eef7a73bd72"},{"url":"http://pb1.pstatp.com/w202/6b6d000a4eef7a73bd72"}],"uri":"medium/6b6d000a4eef7a73bd72"},"user_digg":0,"video_width":638,"online_time":1520470223,"category_name":"搞笑视频","flash_url":"","category_visible":true,"bury_count":308,"is_anonymous":false,"repin_count":335,"video_id":"2990ce2b4efd4b1596df9e442f1b211d","uri":"2990ce2b4efd4b1596df9e442f1b211d","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"6b6d000a4eef7a73bd72","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":92136381193,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[],"type":1,"display_time":1.52239067588E9,"online_time":1.52239067588E9},{"group":{"360p_video":{"width":362,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c7715d8733d54ab69a6fa33d04e669ba&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c7715d8733d54ab69a6fa33d04e669ba&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/c7715d8733d54ab69a6fa33d04e669ba","height":640},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c7715d8733d54ab69a6fa33d04e669ba&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"都是眼泪！","category_activity_start_time":0,"720p_video":{"width":362,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c7715d8733d54ab69a6fa33d04e669ba&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c7715d8733d54ab69a6fa33d04e669ba&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/c7715d8733d54ab69a6fa33d04e669ba","height":640},"digg_count":98757,"duration":7.731,"480p_video":{"width":362,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c7715d8733d54ab69a6fa33d04e669ba&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c7715d8733d54ab69a6fa33d04e669ba&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/c7715d8733d54ab69a6fa33d04e669ba","height":640},"create_time":1520825568,"share_url":"http://m.neihanshequ.com/share/group/92384915683/?iid=0&app=joke_essay","go_detail_count":72808,"keywords":"","id":92384915683,"favorite_count":405,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p1.pstatp.com/large/6d7d0009e7139672b5e7"},{"url":"http://pb3.pstatp.com/large/6d7d0009e7139672b5e7"},{"url":"http://pb9.pstatp.com/large/6d7d0009e7139672b5e7"}],"uri":"large/6d7d0009e7139672b5e7"},"video_wh_ratio":1,"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"","user":{"is_living":false,"user_id":66816431848,"name":"不要偷我的收藏阿","followings":0,"user_verified":false,"ugc_count":350,"avatar_url":"http://p3.pstatp.com/medium/719e0010fc5529aa01c4","followers":3209,"is_following":false,"is_pro_user":false,"medals":[{"count":41,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":2,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c7715d8733d54ab69a6fa33d04e669ba&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":1,"content":"都是眼泪！","video_height":640,"comment_count":548,"id_str":"92384915683","media_type":3,"share_count":1825,"type":2,"category_id":45,"status":112,"has_comments":1,"publish_time":"","user_bury":0,"origin_video":{"width":362,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c7715d8733d54ab69a6fa33d04e669ba&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c7715d8733d54ab69a6fa33d04e669ba&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/c7715d8733d54ab69a6fa33d04e669ba","height":640},"status_desc":"热门投稿","dislike_reason":[{"type":1,"id":604,"title":"低俗"},{"type":2,"id":45,"title":"吧:萌物出没"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":66816431848,"title":"作者:不要偷我的收藏阿"}],"play_count":2210510,"user_repin":0,"category_activity_end_time":0,"medium_cover":{"url_list":[{"url":"http://p1.pstatp.com/w202/6d7d0009e7139672b5e7"},{"url":"http://pb3.pstatp.com/w202/6d7d0009e7139672b5e7"},{"url":"http://pb9.pstatp.com/w202/6d7d0009e7139672b5e7"}],"uri":"medium/6d7d0009e7139672b5e7"},"user_digg":0,"video_width":362,"online_time":1520825568,"category_name":"萌物出没","flash_url":"","category_visible":true,"bury_count":469,"is_anonymous":false,"repin_count":405,"video_id":"c7715d8733d54ab69a6fa33d04e669ba","uri":"c7715d8733d54ab69a6fa33d04e669ba","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"6d7d0009e7139672b5e7","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":92384915683,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[{"text":"你至少还有一条狗啊","create_time":1520836706,"user_verified":false,"user_bury":0,"user_id":50622820344,"bury_count":0,"share_url":"http://m.neihanshequ.com/share/group/92384915683/?comment_id=1594712870166536","id":1594712870166536,"platform":"feifei","is_digg":0,"user_name":"看见萝卜红了眼的兔子","user_profile_image_url":"http://p3.pstatp.com/thumb/5d46000313977c2679d2","medals":[{"count":2,"icon_url":"http://p3.pstatp.com/obj/3b640009efd3397c45e2","name":"god_comment","small_icon_url":"http://p1.pstatp.com/obj/39f2000b4a7229fc36eb"}],"status":5,"description":"河南段友 有空出来玩 喊我","comment_id":1594712870166536,"user_digg":0,"user_profile_url":"","share_type":1,"digg_count":53362,"is_pro_user":false,"platform_id":"feifei","avatar_url":"http://p3.pstatp.com/thumb/5d46000313977c2679d2","group_id":92384915683}],"type":1,"display_time":1.5223906758700001E9,"online_time":1.5223906758700001E9},{"group":{"360p_video":{"width":360,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=f29019d51b414ee08a5b92ffb7272fb7&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=f29019d51b414ee08a5b92ffb7272fb7&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/f29019d51b414ee08a5b92ffb7272fb7","height":640},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=f29019d51b414ee08a5b92ffb7272fb7&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"遇到油罐车漏油了，我现在应该怎么办？段友","category_activity_start_time":0,"720p_video":{"width":360,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=f29019d51b414ee08a5b92ffb7272fb7&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=f29019d51b414ee08a5b92ffb7272fb7&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/f29019d51b414ee08a5b92ffb7272fb7","height":640},"digg_count":73457,"duration":6.477,"480p_video":{"width":360,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=f29019d51b414ee08a5b92ffb7272fb7&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=f29019d51b414ee08a5b92ffb7272fb7&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/f29019d51b414ee08a5b92ffb7272fb7","height":640},"create_time":1520229329,"share_url":"http://m.neihanshequ.com/share/group/91984954473/?iid=0&app=joke_essay","go_detail_count":679091,"keywords":"","id":91984954473,"favorite_count":1174,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p9.pstatp.com/large/6ace0012305a2f9a546e"},{"url":"http://pb1.pstatp.com/large/6ace0012305a2f9a546e"},{"url":"http://pb3.pstatp.com/large/6ace0012305a2f9a546e"}],"uri":"large/6ace0012305a2f9a546e"},"video_wh_ratio":1,"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"","user":{"is_living":false,"user_id":73982899018,"name":"广东十年之约","followings":0,"user_verified":false,"ugc_count":77,"avatar_url":"http://p1.pstatp.com/medium/5d470019156df39f3553","followers":370,"is_following":false,"is_pro_user":false,"medals":[{"count":13,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=f29019d51b414ee08a5b92ffb7272fb7&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":1,"content":"遇到油罐车漏油了，我现在应该怎么办？段友","video_height":640,"comment_count":4932,"id_str":"91984954473","media_type":3,"share_count":866,"type":2,"category_id":280,"status":112,"has_comments":1,"publish_time":"","user_bury":0,"origin_video":{"width":360,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=f29019d51b414ee08a5b92ffb7272fb7&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=f29019d51b414ee08a5b92ffb7272fb7&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/f29019d51b414ee08a5b92ffb7272fb7","height":640},"status_desc":"热门投稿","dislike_reason":[{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":73982899018,"title":"作者:广东十年之约"}],"play_count":1900338,"user_repin":0,"category_activity_end_time":0,"medium_cover":{"url_list":[{"url":"http://p9.pstatp.com/w202/6ace0012305a2f9a546e"},{"url":"http://pb1.pstatp.com/w202/6ace0012305a2f9a546e"},{"url":"http://pb3.pstatp.com/w202/6ace0012305a2f9a546e"}],"uri":"medium/6ace0012305a2f9a546e"},"user_digg":0,"video_width":360,"online_time":1520229329,"category_name":"段友随手拍","flash_url":"","category_visible":false,"bury_count":351,"is_anonymous":false,"repin_count":1174,"video_id":"f29019d51b414ee08a5b92ffb7272fb7","uri":"f29019d51b414ee08a5b92ffb7272fb7","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"6ace0012305a2f9a546e","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":91984954473,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[{"text":"高速倒车，恭喜你，12分","create_time":1520230749,"user_verified":false,"user_bury":0,"user_id":5734489031,"bury_count":0,"share_url":"http://m.neihanshequ.com/share/group/91984954473/?comment_id=1594077477197838","id":1594077477197838,"platform":"feifei","is_digg":0,"user_name":"不过你也不知道","user_profile_image_url":"http://p9.pstatp.com/thumb/658900496d544d21a9c5","medals":[{"count":1,"icon_url":"http://p3.pstatp.com/obj/3b640009efd3397c45e2","name":"god_comment","small_icon_url":"http://p1.pstatp.com/obj/39f2000b4a7229fc36eb"}],"status":5,"description":"","comment_id":1594077477197838,"user_digg":0,"user_profile_url":"","share_type":1,"digg_count":69580,"is_pro_user":false,"platform_id":"feifei","avatar_url":"http://p9.pstatp.com/thumb/658900496d544d21a9c5","group_id":91984954473},{"text":"这时候千万不能慌，也不能高速上调头，先给前面油罐车司机发根烟，问他什么情况！","create_time":1520243668,"user_verified":false,"user_bury":0,"user_id":69570525572,"bury_count":0,"share_url":"http://m.neihanshequ.com/share/group/91984954473/?comment_id=1594091024417795","id":1594091024417795,"platform":"feifei","is_digg":0,"user_name":"巡查人员18","user_profile_image_url":"http://p1.pstatp.com/thumb/659500151a706ce345aa","medals":[{"count":1,"icon_url":"http://p3.pstatp.com/obj/3b640009efd3397c45e2","name":"god_comment","small_icon_url":"http://p1.pstatp.com/obj/39f2000b4a7229fc36eb"}],"status":5,"description":"","comment_id":1594091024417795,"user_digg":0,"user_profile_url":"","share_type":1,"digg_count":72923,"is_pro_user":false,"platform_id":"feifei","avatar_url":"http://p1.pstatp.com/thumb/659500151a706ce345aa","group_id":91984954473}],"type":1,"display_time":1.5223906758600001E9,"online_time":1.5223906758600001E9},{"group":{"360p_video":{"width":640,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c6cb16c8ae75401881bd1ada2a6a8262&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c6cb16c8ae75401881bd1ada2a6a8262&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/c6cb16c8ae75401881bd1ada2a6a8262","height":368},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c6cb16c8ae75401881bd1ada2a6a8262&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"","category_activity_start_time":1506222300,"720p_video":{"width":640,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c6cb16c8ae75401881bd1ada2a6a8262&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c6cb16c8ae75401881bd1ada2a6a8262&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/c6cb16c8ae75401881bd1ada2a6a8262","height":368},"digg_count":8,"duration":70.584,"480p_video":{"width":640,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c6cb16c8ae75401881bd1ada2a6a8262&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c6cb16c8ae75401881bd1ada2a6a8262&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/c6cb16c8ae75401881bd1ada2a6a8262","height":368},"create_time":1522390384,"share_url":"http://m.neihanshequ.com/share/group/93432543133/?iid=0&app=joke_essay","go_detail_count":0,"keywords":"","id":93432543133,"favorite_count":0,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p9.pstatp.com/large/745f0008cfb35a0f18de"},{"url":"http://pb1.pstatp.com/large/745f0008cfb35a0f18de"},{"url":"http://pb3.pstatp.com/large/745f0008cfb35a0f18de"}],"uri":"large/745f0008cfb35a0f18de"},"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"赶紧来参加活动领红包吧","user":{"is_living":false,"user_id":58667321521,"name":"曾经少年薄荷凉220134187","followings":0,"user_verified":false,"ugc_count":46,"avatar_url":"http://wx.qlogo.cn/mmopen/vi_32/0vicRsm2oNudVHt341PJa9NdBFd1aI3LFpQ5nfxI7gAzlr4oK2dBhSWCJZ4FpDnibjxd7qbGFZldFTZaSo8YEdxg/0","followers":2,"is_following":false,"is_pro_user":false,"medals":[]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c6cb16c8ae75401881bd1ada2a6a8262&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":4,"content":"","video_height":368,"comment_count":0,"id_str":"93432543133","media_type":3,"share_count":0,"type":2,"category_id":65,"status":140,"has_comments":0,"publish_time":"","user_bury":0,"origin_video":{"width":640,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c6cb16c8ae75401881bd1ada2a6a8262&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=c6cb16c8ae75401881bd1ada2a6a8262&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/c6cb16c8ae75401881bd1ada2a6a8262","height":368},"status_desc":"已发表","dislike_reason":[{"type":2,"id":65,"title":"吧:搞笑视频"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":58667321521,"title":"作者:曾经少年薄荷凉220134187"}],"play_count":22,"user_repin":0,"category_activity_end_time":1506355200,"medium_cover":{"url_list":[{"url":"http://p9.pstatp.com/w202/745f0008cfb35a0f18de"},{"url":"http://pb1.pstatp.com/w202/745f0008cfb35a0f18de"},{"url":"http://pb3.pstatp.com/w202/745f0008cfb35a0f18de"}],"uri":"medium/745f0008cfb35a0f18de"},"user_digg":0,"video_width":640,"online_time":1522390384,"category_name":"搞笑视频","flash_url":"","category_visible":true,"bury_count":1,"is_anonymous":false,"repin_count":0,"video_id":"c6cb16c8ae75401881bd1ada2a6a8262","uri":"c6cb16c8ae75401881bd1ada2a6a8262","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"745f0008cfb35a0f18de","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":93432543133,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[],"type":1,"display_time":1.5223906758500001E9,"online_time":1.5223906758500001E9},{"group":{"360p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=cfa40f1cbe8d4c8d9f8f06690fa4a4f7&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=cfa40f1cbe8d4c8d9f8f06690fa4a4f7&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/cfa40f1cbe8d4c8d9f8f06690fa4a4f7","height":854},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=cfa40f1cbe8d4c8d9f8f06690fa4a4f7&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"谁能截到张一山","category_activity_start_time":0,"720p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=cfa40f1cbe8d4c8d9f8f06690fa4a4f7&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=cfa40f1cbe8d4c8d9f8f06690fa4a4f7&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/cfa40f1cbe8d4c8d9f8f06690fa4a4f7","height":854},"digg_count":7537,"duration":5.16,"480p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=cfa40f1cbe8d4c8d9f8f06690fa4a4f7&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=cfa40f1cbe8d4c8d9f8f06690fa4a4f7&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/cfa40f1cbe8d4c8d9f8f06690fa4a4f7","height":854},"create_time":1517546285,"share_url":"http://m.neihanshequ.com/share/group/90139874563/?iid=0&app=joke_essay","go_detail_count":274591,"keywords":"","id":90139874563,"favorite_count":344,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p3.pstatp.com/large/5f4c0012a1188095a739"},{"url":"http://pb9.pstatp.com/large/5f4c0012a1188095a739"},{"url":"http://pb1.pstatp.com/large/5f4c0012a1188095a739"}],"uri":"large/5f4c0012a1188095a739"},"video_wh_ratio":1,"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"","user":{"is_living":false,"user_id":5746584028,"name":"权叔叔呐","followings":0,"user_verified":false,"ugc_count":24,"avatar_url":"http://q.qlogo.cn/qqapp/100290348/4A2B9A048EEB4AAE33C416F2E844381D/100","followers":132,"is_following":false,"is_pro_user":false,"medals":[{"count":1,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=cfa40f1cbe8d4c8d9f8f06690fa4a4f7&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":4,"content":"谁能截到张一山","video_height":854,"comment_count":2034,"id_str":"90139874563","media_type":3,"share_count":36019,"type":2,"category_id":242,"status":102,"has_comments":0,"publish_time":"","user_bury":0,"origin_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=cfa40f1cbe8d4c8d9f8f06690fa4a4f7&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=cfa40f1cbe8d4c8d9f8f06690fa4a4f7&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/cfa40f1cbe8d4c8d9f8f06690fa4a4f7","height":854},"status_desc":"已发表","dislike_reason":[{"type":2,"id":242,"title":"吧:鬼畜视频"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":5746584028,"title":"作者:权叔叔呐"}],"play_count":1510968,"user_repin":0,"category_activity_end_time":0,"medium_cover":{"url_list":[{"url":"http://p3.pstatp.com/w202/5f4c0012a1188095a739"},{"url":"http://pb9.pstatp.com/w202/5f4c0012a1188095a739"},{"url":"http://pb1.pstatp.com/w202/5f4c0012a1188095a739"}],"uri":"medium/5f4c0012a1188095a739"},"user_digg":0,"video_width":480,"online_time":1517546285,"category_name":"鬼畜视频","flash_url":"","category_visible":true,"bury_count":2372,"is_anonymous":false,"repin_count":344,"video_id":"cfa40f1cbe8d4c8d9f8f06690fa4a4f7","uri":"cfa40f1cbe8d4c8d9f8f06690fa4a4f7","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"5f4c0012a1188095a739","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":90139874563,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[],"type":1,"display_time":1.5223906758400002E9,"online_time":1.5223906758400002E9},{"group":{"360p_video":{"width":848,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=fcd7e9136cd44db8bad19abd1a659179&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=fcd7e9136cd44db8bad19abd1a659179&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/fcd7e9136cd44db8bad19abd1a659179","height":480},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=fcd7e9136cd44db8bad19abd1a659179&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"我见过最丑的貂蝉！","category_activity_start_time":0,"720p_video":{"width":848,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=fcd7e9136cd44db8bad19abd1a659179&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=fcd7e9136cd44db8bad19abd1a659179&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/fcd7e9136cd44db8bad19abd1a659179","height":480},"digg_count":13736,"duration":10.227,"480p_video":{"width":848,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=fcd7e9136cd44db8bad19abd1a659179&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=fcd7e9136cd44db8bad19abd1a659179&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/fcd7e9136cd44db8bad19abd1a659179","height":480},"create_time":1522319638,"share_url":"http://m.neihanshequ.com/share/group/93387978923/?iid=0&app=joke_essay","go_detail_count":118789,"keywords":"","id":93387978923,"favorite_count":116,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p1.pstatp.com/large/743100030141aef1f8fa"},{"url":"http://pb3.pstatp.com/large/743100030141aef1f8fa"},{"url":"http://pb9.pstatp.com/large/743100030141aef1f8fa"}],"uri":"large/743100030141aef1f8fa"},"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"","user":{"is_living":false,"user_id":56437461757,"name":"十六美形象顾问--阿洪","followings":0,"user_verified":false,"ugc_count":28,"avatar_url":"http://p1.pstatp.com/medium/6c4a000c3be3a42d8c69","followers":12,"is_following":false,"is_pro_user":false,"medals":[{"count":7,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=fcd7e9136cd44db8bad19abd1a659179&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":1,"content":"我见过最丑的貂蝉！","video_height":480,"comment_count":549,"id_str":"93387978923","media_type":3,"share_count":216,"type":2,"category_id":47132,"status":112,"has_comments":1,"publish_time":"","user_bury":0,"origin_video":{"width":848,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=fcd7e9136cd44db8bad19abd1a659179&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=fcd7e9136cd44db8bad19abd1a659179&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/fcd7e9136cd44db8bad19abd1a659179","height":480},"status_desc":"热门投稿","dislike_reason":[{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":56437461757,"title":"作者:十六美形象顾问--阿洪"}],"play_count":470350,"user_repin":0,"category_activity_end_time":0,"medium_cover":{"url_list":[{"url":"http://p1.pstatp.com/w202/743100030141aef1f8fa"},{"url":"http://pb3.pstatp.com/w202/743100030141aef1f8fa"},{"url":"http://pb9.pstatp.com/w202/743100030141aef1f8fa"}],"uri":"medium/743100030141aef1f8fa"},"user_digg":0,"video_width":848,"online_time":1522319638,"category_name":"过分了啊","flash_url":"","category_visible":false,"bury_count":446,"is_anonymous":false,"repin_count":116,"video_id":"fcd7e9136cd44db8bad19abd1a659179","uri":"fcd7e9136cd44db8bad19abd1a659179","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"743100030141aef1f8fa","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":93387978923,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[{"text":"全是小朋友演的 还有这个女孩跳舞 很厉害","create_time":1522323473,"user_verified":false,"user_bury":0,"user_id":53409943922,"bury_count":0,"share_url":"http://m.neihanshequ.com/share/group/93387978923/?comment_id=1596271858472964","id":1596271858472964,"platform":"feifei","is_digg":0,"user_name":"锅翘1","user_profile_image_url":"http://p3.pstatp.com/thumb/18a1000f809298800a12","medals":[{"count":1,"icon_url":"http://p3.pstatp.com/obj/3b640009efd3397c45e2","name":"god_comment","small_icon_url":"http://p1.pstatp.com/obj/39f2000b4a7229fc36eb"}],"status":5,"description":"","comment_id":1596271858472964,"user_digg":0,"user_profile_url":"","share_type":1,"digg_count":9294,"is_pro_user":false,"platform_id":"feifei","avatar_url":"http://p3.pstatp.com/thumb/18a1000f809298800a12","group_id":93387978923},{"text":"吕布：貂蝉要是长成这样，我就不至于犯那么大的错误了","create_time":1522332784,"user_verified":false,"user_bury":0,"user_id":58979810842,"bury_count":0,"share_url":"http://m.neihanshequ.com/share/group/93387978923/?comment_id=1596281620740100","id":1596281620740100,"platform":"feifei","is_digg":0,"user_name":"长春大刀队总队长","user_profile_image_url":"http://p3.pstatp.com/thumb/5405000067b3aa2de5cd","medals":[{"count":2,"icon_url":"http://p3.pstatp.com/obj/3b640009efd3397c45e2","name":"god_comment","small_icon_url":"http://p1.pstatp.com/obj/39f2000b4a7229fc36eb"}],"status":5,"description":"","comment_id":1596281620740100,"user_digg":0,"user_profile_url":"","share_type":1,"digg_count":7941,"is_pro_user":false,"platform_id":"feifei","avatar_url":"http://p3.pstatp.com/thumb/5405000067b3aa2de5cd","group_id":93387978923}],"type":1,"display_time":1.5223906758300002E9,"online_time":1.5223906758300002E9},{"group":{"360p_video":{"width":640,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=96ea4c975e9040618b88fdd759bbe905&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=96ea4c975e9040618b88fdd759bbe905&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/96ea4c975e9040618b88fdd759bbe905","height":362},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=96ea4c975e9040618b88fdd759bbe905&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"这是我在段子上受益最大的视频","category_activity_start_time":0,"720p_video":{"width":640,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=96ea4c975e9040618b88fdd759bbe905&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=96ea4c975e9040618b88fdd759bbe905&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/96ea4c975e9040618b88fdd759bbe905","height":362},"digg_count":71113,"duration":124.785,"480p_video":{"width":640,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=96ea4c975e9040618b88fdd759bbe905&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=96ea4c975e9040618b88fdd759bbe905&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/96ea4c975e9040618b88fdd759bbe905","height":362},"create_time":1519223599,"share_url":"http://m.neihanshequ.com/share/group/91305081463/?iid=0&app=joke_essay","go_detail_count":228221,"keywords":"","id":91305081463,"favorite_count":43117,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p3.pstatp.com/large/67b1000b9dd48f028501"},{"url":"http://pb9.pstatp.com/large/67b1000b9dd48f028501"},{"url":"http://pb1.pstatp.com/large/67b1000b9dd48f028501"}],"uri":"large/67b1000b9dd48f028501"},"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"","user":{"is_living":false,"user_id":91679924170,"name":"无可救药又如何","followings":0,"user_verified":false,"ugc_count":58,"avatar_url":"http://p1.pstatp.com/medium/5d4500198f5e37fea10c","followers":1131,"is_following":false,"is_pro_user":false,"medals":[{"count":5,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=96ea4c975e9040618b88fdd759bbe905&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":4,"content":"这是我在段子上受益最大的视频","video_height":362,"comment_count":1179,"id_str":"91305081463","media_type":3,"share_count":57383,"type":2,"category_id":1867,"status":102,"has_comments":0,"publish_time":"","user_bury":0,"origin_video":{"width":640,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=96ea4c975e9040618b88fdd759bbe905&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=96ea4c975e9040618b88fdd759bbe905&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/96ea4c975e9040618b88fdd759bbe905","height":362},"status_desc":"已发表","dislike_reason":[{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":91679924170,"title":"作者:无可救药又如何"}],"play_count":3600064,"user_repin":0,"category_activity_end_time":0,"medium_cover":{"url_list":[{"url":"http://p3.pstatp.com/w202/67b1000b9dd48f028501"},{"url":"http://pb9.pstatp.com/w202/67b1000b9dd48f028501"},{"url":"http://pb1.pstatp.com/w202/67b1000b9dd48f028501"}],"uri":"medium/67b1000b9dd48f028501"},"user_digg":0,"video_width":640,"online_time":1519223599,"category_name":"励志视频","flash_url":"","category_visible":false,"bury_count":1962,"is_anonymous":false,"repin_count":43117,"video_id":"96ea4c975e9040618b88fdd759bbe905","uri":"96ea4c975e9040618b88fdd759bbe905","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"67b1000b9dd48f028501","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":91305081463,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[],"type":1,"display_time":1.5223906758200002E9,"online_time":1.5223906758200002E9},{"group":{"360p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4c265419a8d54df1b1cea3cf90e3cae4&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4c265419a8d54df1b1cea3cf90e3cae4&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/4c265419a8d54df1b1cea3cf90e3cae4","height":854},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4c265419a8d54df1b1cea3cf90e3cae4&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"微信聊天还有动态背景，瞬间就能征服小姐姐","category_activity_start_time":0,"720p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4c265419a8d54df1b1cea3cf90e3cae4&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4c265419a8d54df1b1cea3cf90e3cae4&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/4c265419a8d54df1b1cea3cf90e3cae4","height":854},"digg_count":1714,"duration":36.032,"480p_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4c265419a8d54df1b1cea3cf90e3cae4&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4c265419a8d54df1b1cea3cf90e3cae4&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/4c265419a8d54df1b1cea3cf90e3cae4","height":854},"create_time":1522375177,"share_url":"http://m.neihanshequ.com/share/group/93399020023/?iid=0&app=joke_essay","go_detail_count":48329,"keywords":"","id":93399020023,"favorite_count":3865,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p3.pstatp.com/large/744c00115972564a3d86"},{"url":"http://pb9.pstatp.com/large/744c00115972564a3d86"},{"url":"http://pb1.pstatp.com/large/744c00115972564a3d86"}],"uri":"large/744c00115972564a3d86"},"video_wh_ratio":1,"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"","user":{"is_living":false,"user_id":6047830107,"name":"黑马公社","followings":0,"user_verified":true,"ugc_count":812,"avatar_url":"http://p1.pstatp.com/medium/97d0017dc14d88f544b","followers":382620,"is_following":false,"is_pro_user":false,"medals":[{"count":657,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4c265419a8d54df1b1cea3cf90e3cae4&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":1,"content":"微信聊天还有动态背景，瞬间就能征服小姐姐","video_height":854,"comment_count":318,"id_str":"93399020023","media_type":3,"share_count":241,"type":2,"category_id":252,"status":112,"has_comments":0,"publish_time":"","user_bury":0,"origin_video":{"width":480,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4c265419a8d54df1b1cea3cf90e3cae4&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=4c265419a8d54df1b1cea3cf90e3cae4&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/4c265419a8d54df1b1cea3cf90e3cae4","height":854},"status_desc":"热门投稿","dislike_reason":[{"type":1,"id":572,"title":"科技"},{"type":2,"id":252,"title":"吧:科技视频"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":6047830107,"title":"作者:黑马公社"}],"play_count":240668,"user_repin":0,"category_activity_end_time":0,"medium_cover":{"url_list":[{"url":"http://p3.pstatp.com/w202/744c00115972564a3d86"},{"url":"http://pb9.pstatp.com/w202/744c00115972564a3d86"},{"url":"http://pb1.pstatp.com/w202/744c00115972564a3d86"}],"uri":"medium/744c00115972564a3d86"},"user_digg":0,"video_width":480,"online_time":1522375177,"category_name":"科技视频","flash_url":"","category_visible":true,"bury_count":235,"is_anonymous":false,"repin_count":3865,"video_id":"4c265419a8d54df1b1cea3cf90e3cae4","uri":"4c265419a8d54df1b1cea3cf90e3cae4","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"744c00115972564a3d86","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":93399020023,"is_video":1,"allow_dislike":true,"display_type":0},"comments":[],"type":1,"display_time":1.5223906758100002E9,"online_time":1.5223906758100002E9}]
   */

  bool has_more;
  String tip;
  bool has_new_message;
  double max_time;
  int min_time;

  @JsonKey(nullable: false)
  List<DataBean> data;

  DataBeanX({this.has_more,this.tip,this.has_new_message,this.max_time,this.min_time,List<DataBean> data}):this.data=data??<DataBean>[];


  factory DataBeanX.fromJson(Map<String, dynamic> json) => _$DataBeanXFromJson(json);


}

@JsonSerializable(includeIfNull: false)
class DataBean extends Object with _$DataBeanSerializerMixin{
  /**
   * group : {"360p_video":{"width":652,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/31c580a4badd4db5bb492b3d047334af","height":368},"mp4_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=480p&line=0&is_gif=0&device_platform=.mp4","text":"这尼玛，我都懵逼了！","category_activity_start_time":1506222300,"720p_video":{"width":652,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/31c580a4badd4db5bb492b3d047334af","height":368},"digg_count":2788,"duration":64.852,"480p_video":{"width":652,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/31c580a4badd4db5bb492b3d047334af","height":368},"create_time":1519923285,"share_url":"http://m.neihanshequ.com/share/group/91785688893/?iid=0&app=joke_essay","go_detail_count":22548,"keywords":"","id":91785688893,"favorite_count":601,"danmaku_attrs":{"allow_show_danmaku":1,"allow_send_danmaku":1},"m3u8_url":"","large_cover":{"url_list":[{"url":"http://p3.pstatp.com/large/69e9000d7588ea015ed5"},{"url":"http://pb9.pstatp.com/large/69e9000d7588ea015ed5"},{"url":"http://pb1.pstatp.com/large/69e9000d7588ea015ed5"}],"uri":"large/69e9000d7588ea015ed5"},"category_activity_schema_url":"","user_favorite":0,"share_type":0,"title":"","category_activity_text":"赶紧来参加活动领红包吧","user":{"is_living":false,"user_id":50248398279,"name":"HINY1999","followings":0,"user_verified":false,"ugc_count":217,"avatar_url":"http://wx.qlogo.cn/mmopen/Q3auHgzwzM5Ag373IJ7kI8Rib8P95v55Q30ONdEw0w8Xauw2pjInlWmryb2eRpUpy0GMUoTBKnqlVETvpy5298A/0","followers":180,"is_following":false,"is_pro_user":false,"medals":[{"count":2,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]},"is_can_share":1,"category_type":1,"download_url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=360p&line=0&is_gif=0&device_platform=&down_type=in","label":1,"content":"这尼玛，我都懵逼了！","video_height":368,"comment_count":119,"id_str":"91785688893","media_type":3,"share_count":4168,"type":2,"category_id":65,"status":112,"has_comments":0,"publish_time":"","user_bury":0,"origin_video":{"width":652,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/31c580a4badd4db5bb492b3d047334af","height":368},"status_desc":"热门投稿","dislike_reason":[{"type":2,"id":65,"title":"吧:搞笑视频"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":50248398279,"title":"作者:HINY1999"}],"play_count":295966,"user_repin":0,"category_activity_end_time":1506355200,"medium_cover":{"url_list":[{"url":"http://p3.pstatp.com/w202/69e9000d7588ea015ed5"},{"url":"http://pb9.pstatp.com/w202/69e9000d7588ea015ed5"},{"url":"http://pb1.pstatp.com/w202/69e9000d7588ea015ed5"}],"uri":"medium/69e9000d7588ea015ed5"},"user_digg":0,"video_width":652,"online_time":1519923285,"category_name":"搞笑视频","flash_url":"","category_visible":true,"bury_count":399,"is_anonymous":false,"repin_count":601,"video_id":"31c580a4badd4db5bb492b3d047334af","uri":"31c580a4badd4db5bb492b3d047334af","is_public_url":1,"has_hot_comments":0,"category_show_ranking":0,"cover_image_uri":"69e9000d7588ea015ed5","category_is_activity":0,"cover_image_url":"","activity":{},"group_id":91785688893,"is_video":1,"allow_dislike":true,"display_type":0}
   * comments : []
   * type : 1
   * display_time : 1522390676
   * online_time : 1522390676
   */

   GroupBean group;
   int type;
   double display_time;
   double online_time;
   List<CommentsBean> comments;

   DataBean({this.group,this.type,this.display_time,this.online_time,List<CommentsBean> comments})
       :this.comments=comments??<CommentsBean>[];


   factory DataBean.fromJson(Map<String, dynamic> json) => _$DataBeanFromJson(json);

}


@JsonSerializable()
class GroupBean extends Object with _$GroupBeanSerializerMixin{
  /**
   * 360p_video : {"width":652,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=360p&line=1&is_gif=0&device_platform="}],"uri":"360p/31c580a4badd4db5bb492b3d047334af","height":368}
   * mp4_url : http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=480p&line=0&is_gif=0&device_platform=.mp4
   * text : 这尼玛，我都懵逼了！
   * category_activity_start_time : 1506222300
   * 720p_video : {"width":652,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=720p&line=1&is_gif=0&device_platform="}],"uri":"720p/31c580a4badd4db5bb492b3d047334af","height":368}
   * digg_count : 2788
   * duration : 64.852
   * 480p_video : {"width":652,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=480p&line=1&is_gif=0&device_platform="}],"uri":"480p/31c580a4badd4db5bb492b3d047334af","height":368}
   * create_time : 1519923285
   * share_url : http://m.neihanshequ.com/share/group/91785688893/?iid=0&app=joke_essay
   * go_detail_count : 22548
   * keywords :
   * id : 91785688893
   * favorite_count : 601
   * danmaku_attrs : {"allow_show_danmaku":1,"allow_send_danmaku":1}
   * m3u8_url :
   * large_cover : {"url_list":[{"url":"http://p3.pstatp.com/large/69e9000d7588ea015ed5"},{"url":"http://pb9.pstatp.com/large/69e9000d7588ea015ed5"},{"url":"http://pb1.pstatp.com/large/69e9000d7588ea015ed5"}],"uri":"large/69e9000d7588ea015ed5"}
   * category_activity_schema_url :
   * user_favorite : 0
   * share_type : 0
   * title :
   * category_activity_text : 赶紧来参加活动领红包吧
   * user : {"is_living":false,"user_id":50248398279,"name":"HINY1999","followings":0,"user_verified":false,"ugc_count":217,"avatar_url":"http://wx.qlogo.cn/mmopen/Q3auHgzwzM5Ag373IJ7kI8Rib8P95v55Q30ONdEw0w8Xauw2pjInlWmryb2eRpUpy0GMUoTBKnqlVETvpy5298A/0","followers":180,"is_following":false,"is_pro_user":false,"medals":[{"count":2,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]}
   * is_can_share : 1
   * category_type : 1
   * download_url : http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=360p&line=0&is_gif=0&device_platform=&down_type=in
   * label : 1
   * content : 这尼玛，我都懵逼了！
   * video_height : 368
   * comment_count : 119
   * id_str : 91785688893
   * media_type : 3
   * share_count : 4168
   * type : 2
   * category_id : 65
   * status : 112
   * has_comments : 0
   * publish_time :
   * user_bury : 0
   * origin_video : {"width":652,"url_list":[{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=origin&line=1&is_gif=0&device_platform="}],"uri":"origin/31c580a4badd4db5bb492b3d047334af","height":368}
   * status_desc : 热门投稿
   * dislike_reason : [{"type":2,"id":65,"title":"吧:搞笑视频"},{"type":4,"id":0,"title":"内容重复"},{"type":3,"id":50248398279,"title":"作者:HINY1999"}]
   * play_count : 295966
   * user_repin : 0
   * category_activity_end_time : 1506355200
   * medium_cover : {"url_list":[{"url":"http://p3.pstatp.com/w202/69e9000d7588ea015ed5"},{"url":"http://pb9.pstatp.com/w202/69e9000d7588ea015ed5"},{"url":"http://pb1.pstatp.com/w202/69e9000d7588ea015ed5"}],"uri":"medium/69e9000d7588ea015ed5"}
   * user_digg : 0
   * video_width : 652
   * online_time : 1519923285
   * category_name : 搞笑视频
   * flash_url :
   * category_visible : true
   * bury_count : 399
   * is_anonymous : false
   * repin_count : 601
   * video_id : 31c580a4badd4db5bb492b3d047334af
   * uri : 31c580a4badd4db5bb492b3d047334af
   * is_public_url : 1
   * has_hot_comments : 0
   * category_show_ranking : 0
   * cover_image_uri : 69e9000d7588ea015ed5
   * category_is_activity : 0
   * cover_image_url :
   * activity : {}
   * group_id : 91785688893
   * is_video : 1
   * allow_dislike : true
   * display_type : 0
   */

//  @SerializedName("360p_video")
  $360pVideoBean _$360p_video;
  String mp4_url;
  String text;
  int category_activity_start_time;
//  @SerializedName("720p_video")
  $720pVideoBean _$720p_video;
  int digg_count;
  double duration;
//  @SerializedName("480p_video")
  $480pVideoBean _$480p_video;
  int create_time;
  String share_url;
  int go_detail_count;
  String keywords;
  int id;
  int favorite_count;
  DanmakuAttrsBean danmaku_attrs;
  String m3u8_url;
  LargeCoverBean large_cover;
  String category_activity_schema_url;
  int user_favorite;
  int share_type;
  String title;
  String category_activity_text;
  UserBean user;
  int is_can_share;
  int category_type;
  String download_url;
  int label;
  String content;
  int video_height;
  int comment_count;
  String id_str;
  int media_type;
  int share_count;
  int type;
  int category_id;
  int status;
  int has_comments;
  String publish_time;
  int user_bury;
  OriginVideoBean origin_video;
  String status_desc;
  int play_count;
  int user_repin;
  int category_activity_end_time;
  MediumCoverBean medium_cover;
  int user_digg;
  int video_width;
  int online_time;
  String category_name;
  String flash_url;
  bool category_visible;
  int bury_count;
  bool is_anonymous;
  int repin_count;
  String video_id;
  String uri;
  int is_public_url;
  int has_hot_comments;
  int category_show_ranking;
  String cover_image_uri;
  int category_is_activity;
  String cover_image_url;
  ActivityBean activity;
  int group_id;
  int is_video;
  bool allow_dislike;
  int display_type;
  List<DislikeReasonBean> dislike_reason;

  
   double max_screen_width_percent;
//   LargeImageBean large_image;
   double min_screen_width_percent;
//   MiddleImageBean middle_image;

   
   String neihan_hot_start_time;
   String neihan_hot_end_time;
   bool is_neihan_hot;
   NeihanHotLinkBean neihan_hot_link;
   int is_multi_image;
   List<LargeImageListBean> large_image_list;
   List<ThumbImageListBean> thumb_image_list;


  GroupBean({this.text,this.title,this.content,this.user,this.download_url,this.type,
    this.activity,this.allow_dislike,
    this.bury_count,this.category_activity_end_time, this.category_activity_schema_url,
    this.category_activity_start_time,this.category_activity_text,this.category_id,
    this.category_is_activity,this.category_name,this.category_show_ranking,this.category_type,this.category_visible,
    this.comment_count,this.cover_image_uri,this.cover_image_url,this.create_time,this.danmaku_attrs,this.digg_count,
    this.display_type,this.duration,this.favorite_count,this.flash_url,this.go_detail_count,this.group_id,
    this.has_comments,this.has_hot_comments,this.id,this.id_str,this.is_anonymous,this.is_can_share,
    this.is_public_url,this.is_video,this.keywords, this.large_cover,this.label,this.m3u8_url,this.media_type,
    this.medium_cover,this.mp4_url,this.online_time,this.origin_video,this.play_count, this.publish_time,
    this.repin_count,this.share_count,this.share_type,this.share_url,this.status,this.status_desc,this.uri,
    this.user_bury, this.user_digg,this.user_favorite,this.user_repin,this.video_height,this.video_id,
    this.video_width,$360pVideoBean $360p_video,$480pVideoBean $480p_video,$720pVideoBean $720p_video,this.is_multi_image,this.is_neihan_hot,this.max_screen_width_percent,this.min_screen_width_percent,this.neihan_hot_end_time,this.neihan_hot_link,this.neihan_hot_start_time,List<DislikeReasonBean> dislike_reason,List<LargeImageListBean> large_image_list,List<ThumbImageListBean> thumb_image_list,
  }):this._$360p_video=$360p_video,this._$480p_video=$480p_video,this._$720p_video=$720p_video,this.dislike_reason=dislike_reason??<DislikeReasonBean>[],this.large_image_list=large_image_list??<LargeImageListBean>[],this.thumb_image_list=thumb_image_list??<ThumbImageListBean>[];


  factory GroupBean.fromJson(Map<String, dynamic> json) => _$GroupBeanFromJson(json);

}

//@JsonSerializable()
//class LargeImageBean extends Object with _$LargeImageBeanSerializerMixin{
//   /**
//    * width : 202
//    * r_height : 202
//    * r_width : 202
//    * url_list : [{"url":"http://p1.pstatp.com/w202/66700002d9575e6f3ab6"},{"url":"http://pb3.pstatp.com/w202/66700002d9575e6f3ab6"},{"url":"http://pb9.pstatp.com/w202/66700002d9575e6f3ab6"}]
//    * uri : w202/66700002d9575e6f3ab6
//    * height : 202
//    */
//
//   int width;
//   int r_height;
//   int r_width;
//   String uri;
//   int height;
//   List<UrlListBeanX> url_list;
//
//   LargeImageBean({this.width,this.r_width,this.height,this.uri,this.r_height,List<UrlListBeanX> url_list
//   }):this.url_list=url_list;
//
//   factory LargeImageBean.fromJson(Map<String, dynamic> json) => _$LargeImageBeanFromJson(json);
//
//
// }

@JsonSerializable(createToJson: false)
class NeihanHotLinkBean {


  NeihanHotLinkBean();

  factory NeihanHotLinkBean.fromJson(Map<String, dynamic> json) => _$NeihanHotLinkBeanFromJson(json);


  }

@JsonSerializable()
class LargeImageListBean extends Object with _$LargeImageListBeanSerializerMixin{
  /**
   * url : http://p1.pstatp.com/list/s362/75a00000ef6a946d1efe.webp
   * url_list : [{"url":"http://p1.pstatp.com/list/s362/75a00000ef6a946d1efe.webp"},{"url":"http://pb3.pstatp.com/list/s362/75a00000ef6a946d1efe.webp"},{"url":"http://pb3.pstatp.com/list/s362/75a00000ef6a946d1efe.webp"}]
   * uri : list/s362/75a00000ef6a946d1efe
   * height : 362
   * width : 362
   * is_gif : false
   */

  String url;
  String uri;
  int height;
  int width;
  bool is_gif;
  List<UrlListBeanX> url_list;

  LargeImageListBean({this.width,this.height,this.uri,this.url,this.is_gif,List<UrlListBeanX> url_list
   }):this.url_list=url_list;

  factory LargeImageListBean.fromJson(Map<String, dynamic> json) => _$LargeImageListBeanFromJson(json);
}

@JsonSerializable()
class ThumbImageListBean extends Object with _$ThumbImageListBeanSerializerMixin{
  /**
   * url : http://p1.pstatp.com/list/s362/75a00000ef6a946d1efe.webp
   * url_list : [{"url":"http://p1.pstatp.com/list/s362/75a00000ef6a946d1efe.webp"},{"url":"http://pb3.pstatp.com/list/s362/75a00000ef6a946d1efe.webp"},{"url":"http://pb3.pstatp.com/list/s362/75a00000ef6a946d1efe.webp"}]
   * uri : list/s362/75a00000ef6a946d1efe
   * height : 362
   * width : 362
   * is_gif : false
   */

  String url;
  String uri;
  int height;
  int width;
  bool is_gif;
  List<UrlListBeanX> url_list;


  ThumbImageListBean({this.width,this.height,this.uri,this.url,this.is_gif,List<UrlListBeanX> url_list
  }):this.url_list=url_list;

  factory ThumbImageListBean.fromJson(Map<String, dynamic> json) => _$ThumbImageListBeanFromJson(json);

}

//@JsonSerializable()
// class MiddleImageBean extends Object with _$MiddleImageBeanSerializerMixin{
//   /**
//    * width : 202
//    * r_height : 202
//    * r_width : 202
//    * url_list : [{"url":"http://p1.pstatp.com/w202/66700002d9575e6f3ab6"},{"url":"http://pb3.pstatp.com/w202/66700002d9575e6f3ab6"},{"url":"http://pb9.pstatp.com/w202/66700002d9575e6f3ab6"}]
//    * uri : w202/66700002d9575e6f3ab6
//    * height : 202
//    */
//
//  double width;
//   int r_height;
//   int r_width;
//   String uri;
//   double height;
//   List<UrlListBeanX> url_list;
//
//   MiddleImageBean({this.width,this.r_width,this.height,this.uri,this.r_height,List<UrlListBeanX> url_list
//   }):this.url_list=url_list;
//
//   factory MiddleImageBean.fromJson(Map<String, dynamic> json) => _$MiddleImageBeanFromJson(json);
//
//}


@JsonSerializable()
class CommentsBean extends Object with _$CommentsBeanSerializerMixin{
  /**
   * text : 整个店的人都笑了
   * create_time : 1521799263
   * user_verified : false
   * user_bury : 0
   * user_id : 88630683043
   * bury_count : 0
   * share_url : http://m.neihanshequ.com/share/group/93042404843/?comment_id=1595722183900180
   * id : 1595722183900180
   * platform : feifei
   * is_digg : 0
   * user_name : qzuser
   * user_profile_image_url : http://p1.pstatp.com/thumb/75610001e3c092ab959a
   * medals : [{"count":1,"icon_url":"http://p3.pstatp.com/obj/3b640009efd3397c45e2","name":"god_comment","small_icon_url":"http://p1.pstatp.com/obj/39f2000b4a7229fc36eb"}]
   * status : 5
   * description :
   * comment_id : 1595722183900180
   * user_digg : 0
   * user_profile_url :
   * share_type : 1
   * digg_count : 139471
   * is_pro_user : false
   * platform_id : feifei
   * avatar_url : http://p1.pstatp.com/thumb/75610001e3c092ab959a
   * group_id : 93042404843
   */

  String text;
  int create_time;
  bool user_verified;
  int user_bury;
  int user_id;
  int bury_count;
  String share_url;
  int id;
  String platform;
  int is_digg;
  String user_name;
  String user_profile_image_url;
  int status;
  String description;
  int comment_id;
  int user_digg;
  String user_profile_url;
  int share_type;
  int digg_count;
  bool is_pro_user;
  String platform_id;
  String avatar_url;
  int group_id;
  List<MedalsBeanX> medals;

  CommentsBean({this.user_verified,this.user_id,this.is_pro_user,this.avatar_url,this.user_digg,
    this.user_bury,this.status,this.share_url,this.share_type,this.id,this.group_id,this.digg_count,this.create_time,
    this.bury_count,this.text,this.comment_id,this.description,this.is_digg,this.platform,this.platform_id,
    this.user_name,this.user_profile_image_url,this.user_profile_url,List<MedalsBeanX> medals
  }):this.medals=medals;

  factory CommentsBean.fromJson(Map<String, dynamic> json) => _$CommentsBeanFromJson(json);

}

@JsonSerializable(createToJson: false)
class MedalsBeanX {
  /**
   * count : 1
   * icon_url : http://p3.pstatp.com/obj/3b640009efd3397c45e2
   * name : god_comment
   * small_icon_url : http://p1.pstatp.com/obj/39f2000b4a7229fc36eb
   */

  int count;
  String icon_url;
  String name;
  String small_icon_url;

  MedalsBeanX();

  factory MedalsBeanX.fromJson(Map<String, dynamic> json) => _$MedalsBeanXFromJson(json);

}

@JsonSerializable()
class $360pVideoBean extends Object with _$$360pVideoBeanSerializerMixin{
  /**
   * width : 652
   * url_list : [{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=360p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=360p&line=1&is_gif=0&device_platform="}]
   * uri : 360p/31c580a4badd4db5bb492b3d047334af
   * height : 368
   */

  int width;
  String uri;
  int height;
  List<UrlListBean> url_list;

  $360pVideoBean({this.width, this.uri, this.height,  List<UrlListBean> url_list})
      : this.url_list = url_list ?? <UrlListBean>[];

  factory $360pVideoBean.fromJson(Map<String, dynamic> json) => _$$360pVideoBeanFromJson(json);

}

@JsonSerializable(createToJson: false)
class UrlListBean {
  /**
   * url : http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=360p&line=0&is_gif=0&device_platform=
   */

  String url;

  UrlListBean();

  factory UrlListBean.fromJson(Map<String, dynamic> json) => _$UrlListBeanFromJson(json);

}

@JsonSerializable()
class $720pVideoBean extends Object with _$$720pVideoBeanSerializerMixin{
  /**
   * width : 652
   * url_list : [{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=720p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=720p&line=1&is_gif=0&device_platform="}]
   * uri : 720p/31c580a4badd4db5bb492b3d047334af
   * height : 368
   */

  int width;
  String uri;
  int height;
  List<UrlListBeanX> url_list;

  $720pVideoBean({this.width, this.uri, this.height,  List<UrlListBeanX> url_list})
      : this.url_list = url_list ?? <UrlListBeanX>[];

  factory $720pVideoBean.fromJson(Map<String, dynamic> json) => _$$720pVideoBeanFromJson(json);


}

@JsonSerializable(createToJson: false)
class UrlListBeanX {
  /**
   * url : http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=720p&line=0&is_gif=0&device_platform=
   */

   String url;

   UrlListBeanX();

   factory UrlListBeanX.fromJson(Map<String, dynamic> json) => _$UrlListBeanXFromJson(json);


}

@JsonSerializable()
class $480pVideoBean  extends Object with _$$480pVideoBeanSerializerMixin{
  /**
   * width : 652
   * url_list : [{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=480p&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=480p&line=1&is_gif=0&device_platform="}]
   * uri : 480p/31c580a4badd4db5bb492b3d047334af
   * height : 368
   */

  int width;
  String uri;
  int height;
  List<UrlListBeanXX> url_list;

  $480pVideoBean({this.width, this.uri, this.height,  List<UrlListBeanXX> url_list})
      : this.url_list = url_list ?? <UrlListBeanXX>[];

  factory $480pVideoBean.fromJson(Map<String, dynamic> json) => _$$480pVideoBeanFromJson(json);


}

@JsonSerializable(createToJson: false)
class UrlListBeanXX {
  /**
   * url : http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=480p&line=0&is_gif=0&device_platform=
   */

  String url;

  UrlListBeanXX();

  factory UrlListBeanXX.fromJson(Map<String, dynamic> json) => _$UrlListBeanXXFromJson(json);


}

@JsonSerializable(createToJson: false)
class DanmakuAttrsBean {
  /**
   * allow_show_danmaku : 1
   * allow_send_danmaku : 1
   */

  int allow_show_danmaku;
  int allow_send_danmaku;

  DanmakuAttrsBean();

  factory DanmakuAttrsBean.fromJson(Map<String, dynamic> json) => _$DanmakuAttrsBeanFromJson(json);

}

@JsonSerializable()
class LargeCoverBean  extends Object with _$LargeCoverBeanSerializerMixin{
  /**
   * url_list : [{"url":"http://p3.pstatp.com/large/69e9000d7588ea015ed5"},{"url":"http://pb9.pstatp.com/large/69e9000d7588ea015ed5"},{"url":"http://pb1.pstatp.com/large/69e9000d7588ea015ed5"}]
   * uri : large/69e9000d7588ea015ed5
   */

  String uri;
  List<UrlListBeanXXX> url_list;

  LargeCoverBean({this.uri,   List<UrlListBeanXXX> url_list})
      : this.url_list = url_list ?? <UrlListBeanXXX>[];

  factory LargeCoverBean.fromJson(Map<String, dynamic> json) => _$LargeCoverBeanFromJson(json);


}


@JsonSerializable(createToJson: false)
class UrlListBeanXXX {
  /**
   * url : http://p3.pstatp.com/large/69e9000d7588ea015ed5
   */

  String url;

  UrlListBeanXXX();

  factory UrlListBeanXXX.fromJson(Map<String, dynamic> json) => _$UrlListBeanXXXFromJson(json);


}

@JsonSerializable()
class UserBean extends Object with _$UserBeanSerializerMixin{
  /**
   * is_living : false
   * user_id : 50248398279
   * name : HINY1999
   * followings : 0
   * user_verified : false
   * ugc_count : 217
   * avatar_url : http://wx.qlogo.cn/mmopen/Q3auHgzwzM5Ag373IJ7kI8Rib8P95v55Q30ONdEw0w8Xauw2pjInlWmryb2eRpUpy0GMUoTBKnqlVETvpy5298A/0
   * followers : 180
   * is_following : false
   * is_pro_user : false
   * medals : [{"count":2,"icon_url":"http://p1.pstatp.com/obj/3b6700087870735f5dcb","name":"hot_content","small_icon_url":"http://p1.pstatp.com/obj/3b22000b1e315df24be0"}]
   */

  bool is_living;
  int user_id;
  String name;
  int followings;
  bool user_verified;
  int ugc_count;
  String avatar_url;
  int followers;
  bool is_following;
  bool is_pro_user;
  List<MedalsBean> medals;

  UserBean({this.is_living,this.name,this.avatar_url,this.followers,this.followings,this.is_following,
    this.is_pro_user,this.ugc_count,this.user_id,this.user_verified,  List<MedalsBean> medals})
      : this.medals = medals ?? <MedalsBean>[];

  factory UserBean.fromJson(Map<String, dynamic> json) => _$UserBeanFromJson(json);


}


@JsonSerializable(createToJson: false)
class MedalsBean {
  /**
   * count : 2
   * icon_url : http://p1.pstatp.com/obj/3b6700087870735f5dcb
   * name : hot_content
   * small_icon_url : http://p1.pstatp.com/obj/3b22000b1e315df24be0
   */

  int count;
  String icon_url;
  String name;
  String small_icon_url;

  MedalsBean();

  factory MedalsBean.fromJson(Map<String, dynamic> json) => _$MedalsBeanFromJson(json);


}


@JsonSerializable()
class OriginVideoBean extends Object with _$OriginVideoBeanSerializerMixin{
  /**
   * width : 652
   * url_list : [{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=origin&line=0&is_gif=0&device_platform="},{"url":"http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=origin&line=1&is_gif=0&device_platform="}]
   * uri : origin/31c580a4badd4db5bb492b3d047334af
   * height : 368
   */

  int width;
  String uri;
  int height;
  List<UrlListBeanXXXX> url_list;

  OriginVideoBean({this.width,this.uri,this.height,  List<UrlListBeanXXXX> url_list})
      : this.url_list = url_list ?? <UrlListBeanXXXX>[];

  factory OriginVideoBean.fromJson(Map<String, dynamic> json) => _$OriginVideoBeanFromJson(json);

}

@JsonSerializable(createToJson: false)
class UrlListBeanXXXX {
  /**
   * url : http://ic.snssdk.com/neihan/video/playback/?video_id=31c580a4badd4db5bb492b3d047334af&quality=origin&line=0&is_gif=0&device_platform=
   */

  String url;

  UrlListBeanXXXX();

  factory UrlListBeanXXXX.fromJson(Map<String, dynamic> json) => _$UrlListBeanXXXXFromJson(json);


}

@JsonSerializable(createToJson: false)
class MediumCoverBean {
  MediumCoverBean();

  factory MediumCoverBean.fromJson(Map<String, dynamic> json) => _$MediumCoverBeanFromJson(json);


}
@JsonSerializable(createToJson: false)
class UrlListBeanXXXXX {
  UrlListBeanXXXXX();

  factory UrlListBeanXXXXX.fromJson(Map<String, dynamic> json) => _$UrlListBeanXXXXXFromJson(json);

}
@JsonSerializable(createToJson: false)
class ActivityBean {
  ActivityBean();

  factory ActivityBean.fromJson(Map<String, dynamic> json) => _$ActivityBeanFromJson(json);

}
@JsonSerializable(createToJson: false)
class DislikeReasonBean {
  /**
   * type : 2
   * id : 65
   * title : 吧:搞笑视频
   */

  int type;
  int id;
  String title;

  DislikeReasonBean();

  factory DislikeReasonBean.fromJson(Map<String, dynamic> json) => _$DislikeReasonBeanFromJson(json);

}