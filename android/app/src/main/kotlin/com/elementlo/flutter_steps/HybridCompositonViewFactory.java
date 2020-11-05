package com.elementlo.flutter_steps;

import android.content.Context;
import android.view.View;

import java.util.Map;

import androidx.annotation.NonNull;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

/**
 * author: Elemen
 * Time: 2020/11/4
 * Description:
 */
class HybridCompositonViewFactory extends PlatformViewFactory {

	public HybridCompositonViewFactory(StandardMessageCodec codec) {
		super(StandardMessageCodec.INSTANCE);
	}

	@Override
	public PlatformView create(Context context, int viewId, Object args) {
		final Map<String, Object> creationParams = (Map<String, Object>) args;
		return new HybridCompositionView(context, viewId, creationParams);
	}
}
