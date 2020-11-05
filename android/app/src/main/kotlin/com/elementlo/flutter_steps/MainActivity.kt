package com.elementlo.flutter_steps

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.StandardMessageCodec

class MainActivity : FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        flutterEngine.platformViewsController
                .registry
                .registerViewFactory("hybrid-view-type", HybridCompositonViewFactory(StandardMessageCodec.INSTANCE))
    }

}
