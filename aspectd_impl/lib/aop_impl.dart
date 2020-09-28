import 'package:aspectd/aspectd.dart';

@Aspect()
@pragma("vm:entry-point")
class ExecuteDemo {
  @pragma("vm:entry-point")
  ExecuteDemo();

  @Call("package:flutter_steps/main.dart", "", "+appInit")
  @pragma("vm:entry-point")
  static dynamic appInit(PointCut pointcut) {
    print('[KWLM1]: Before appInit!');
    dynamic object = pointcut.proceed();
    print('[KWLM1]: After appInit!');
    return object;
  }

  @Call("package:flutter_steps/main.dart", "MyApp", "+MyApp")
  @pragma("vm:entry-point")
  static dynamic myAppDefine(PointCut pointcut) {
    print('[KWLM2]: MyApp default constructor!');
    return pointcut.proceed();
  }
}
