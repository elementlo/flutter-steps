import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class AndroidHybridCompositionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Android Hybrid Composition'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              child: _buildHybridCompositonWidget(context),
            ),
            Positioned(
              top: 20,
              left: 80,
              child: Container(
                alignment: Alignment.center,
                height: 100,
                width: 100,
                child: _buildHybridCompositonWidget(context),
              ),
            ),
            Text(
              'RE',
              style: TextStyle(fontSize: 20),
            ),
            Positioned(
              top: 200,
              left: 200,
              child: Text(
                'RE',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHybridCompositonWidget(BuildContext context) {
    // This is used in the platform side to register the view.
    final String viewType = 'hybrid-view-type';
    // Pass parameters to the platform side.
    final Map<String, dynamic> creationParams = <String, dynamic>{};

    return PlatformViewLink(
      viewType: viewType,
      surfaceFactory:
          (BuildContext context, PlatformViewController controller) {
        return AndroidViewSurface(
          controller: controller,
          gestureRecognizers: const <Factory<OneSequenceGestureRecognizer>>{},
          hitTestBehavior: PlatformViewHitTestBehavior.opaque,
        );
      },
      onCreatePlatformView: (PlatformViewCreationParams params) {
        return PlatformViewsService.initSurfaceAndroidView(
          id: params.id,
          viewType: viewType,
          layoutDirection: TextDirection.ltr,
          creationParams: creationParams,
          creationParamsCodec: StandardMessageCodec(),
        )
          ..addOnPlatformViewCreatedListener(params.onPlatformViewCreated)
          ..create();
      },
    );
  }
}
