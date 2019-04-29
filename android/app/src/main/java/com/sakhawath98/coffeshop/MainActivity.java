package com.sakhawath98.coffeshop;

import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;


//package for security feature
import android.view.WindowManager.LayoutParams;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);

    //code for preventing taking screenshot & showing a dark ui instead
    //of app ui in recent items list.
    getWindow().addFlags(LayoutParams.FLAG_SECURE);
  }
}
