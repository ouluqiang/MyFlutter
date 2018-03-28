import 'package:json_annotation/json_annotation.dart';


part 'NewsBean.g.dart';

/**
 * flutter packages pub run build_runner build
 */

@JsonSerializable()
class News extends Object with _$NewsSerializerMixin {
   String message;
   int total_number;
   bool has_more;
   int login_status;
   int show_et_status;
   String post_content_hint;
   bool has_more_to_refresh;
   int action_to_last_stick;
   int feed_flag;
   List<int> sub_entrance_list;

  @JsonKey(nullable: false)
  List<Data> data;
   Tip tips;

  News({this.message, this.total_number, this.has_more, this.login_status, this.show_et_status,
    this.post_content_hint,this.has_more_to_refresh,this.action_to_last_stick,this.sub_entrance_list,this.feed_flag, List<Data> data,Tip tips})
      : this.data = data ?? <Data>[],this.tips=tips;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}

@JsonSerializable(includeIfNull: false)
class Data extends Object with _$DataSerializerMixin {
  String content;
  String code;
  Data();

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable(createToJson: false)
class Tip {
   String type;
   int display_duration;
   String display_info;
   String display_template;
   String open_url;
   String web_url;
   String download_url;
   String app_name;
   String package_name;

  Tip();

  factory Tip.fromJson(Map<String, dynamic> json) => _$TipFromJson(json);
}


