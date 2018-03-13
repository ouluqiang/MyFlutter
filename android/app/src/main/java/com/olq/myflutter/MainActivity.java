package com.olq.myflutter;

import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {

  private MethodChannel methodChannel;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
    if (methodChannel==null)
      methodChannel = new MethodChannel(getFlutterView(),"AndroidMethod");
    methodChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {
      @Override
      public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if (methodCall.method.equals("toast")){
          Log.e("toast",methodCall.method+"---"+methodCall.arguments);
          Toast.makeText(getApplicationContext(),methodCall.arguments+"",Toast.LENGTH_LONG).show();
//          result.success("成功");
          result.error("UNAVAILABLE", "Battery level not available.", null);
        }else{
          result.notImplemented();
        }
      }
    });
  }
}
