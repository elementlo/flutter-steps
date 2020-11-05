package com.elementlo.flutter_steps;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.TextView;

import java.util.Map;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.plugin.platform.PlatformView;

class HybridCompositionView implements PlatformView {
	@NonNull private final TextView textView;

	HybridCompositionView(@NonNull Context context, int id, @Nullable Map<String, Object> creationParams) {
		textView = new TextView(context);
		textView.setTextSize(72);
		textView.setBackgroundColor(Color.rgb(255, 255, 255));
		textView.setText("Rendered on a native Android view (id: " + id + ")");
	}

	@NonNull
	@Override
	public View getView() {
		return textView;
	}

	@Override
	public void dispose() {}
}