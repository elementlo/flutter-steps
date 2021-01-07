import 'package:aspectd/aspectd.dart';

// @Aspect()
// @pragma("vm:entry-point")
// class ExecuteDemo {
//   @pragma("vm:entry-point")
//   ExecuteDemo();
//
//   @Call("package:flutter_steps/main.dart", "", "+appInit")
//   @pragma("vm:entry-point")
//   static dynamic appInit(PointCut pointcut) {
//     print('[KWLM1]: Before appInit!');
//     dynamic object = pointcut.proceed();
//     print('[KWLM1]: After appInit!');
//     return object;
//   }
//
//   @Call("package:flutter_steps/main.dart", "MyApp", "+MyApp")
//   @pragma("vm:entry-point")
//   static dynamic myAppDefine(PointCut pointcut) {
//     print('[KWLM2]: MyApp default constructor!');
//     return pointcut.proceed();
//   }
// }

// @Aspect()
// @pragma("vm:entry-point")
// class RegexCallDemo {
//   @pragma("vm:entry-point")
//   RegexCallDemo();
//
//   @Call("package:flutter_steps\\/.+\\.dart", ".*", "-.+", isRegex: true)
//   @pragma("vm:entry-point")
//   dynamic instanceUniversalHook(PointCut pointcut) {
//     print(
//         '[KWLM11]Before:${pointcut.target}-${pointcut.function}-${pointcut.namedParams}-${pointcut.positionalParams}');
//     dynamic obj = pointcut.proceed();
//     return obj;
//   }
//
// // @Call('package:flutter_steps\\/.+\\.dart', '.*A', '-fa', isRegex: true)
// // @pragma("vm:entry-point")
// // dynamic instanceUniversalHookCustomMixin(PointCut pointcut) {
// //   print('[KWLM12]Before:${pointcut.target}-${pointcut.function}-${pointcut.namedParams}-${pointcut.positionalParams}');
// //   dynamic obj = pointcut.proceed();
// //   return obj;
// // }
// }

// @Aspect()
// @pragma("vm:entry-point")
// class RegularExecuteDemo {
//   @pragma("vm:entry-point")
//   RegularExecuteDemo();
//
//   @Execute("package:flutter_steps/main.dart", "_MyHomePageState", "-_incrementCounter")
//   @pragma("vm:entry-point")
//   dynamic _incrementCounter(PointCut pointcut) {
//     dynamic obj = pointcut.proceed();
//     print('[KWLM21]:${pointcut.sourceInfos}:${pointcut.target}:${pointcut.function}!');
//     return obj;
//   }
//
//   // @Execute("dart:math", "Random", "-nextInt")
//   // @pragma("vm:entry-point")
//   // static dynamic randomNext(PointCut pointcut) {
//   //   print('[KWLM22]:randomNext!');
//   //   return 10;
//   // }
//
//   @Execute("package:flutter/src/widgets/binding.dart","","+runApp")
//   @pragma("vm:entry-point")
//   static void runAppKWLM(PointCut pointcut){
//     print('Aspectd:KWLM17');
//     print('${pointcut.sourceInfos.toString()}');
//     pointcut.proceed();
//   }
// }

@Aspect()
@pragma("vm:entry-point")
class InjectDemo{

 @Inject("package:flutter_steps/main.dart","C","+C", lineNum:121)
 @pragma("vm:entry-point")
 static void onInjectDemoHook3() {
   print('Aspectd:KWLM52');
 }

 // @Inject("package:flutter/src/widgets/gesture_detector.dart","GestureDetector","-build", lineNum:452)
 // @pragma("vm:entry-point")
 // static void onTapBuild() {
 //   Object instance; //Aspectd Ignore
 //   Object context; //Aspectd Ignore
 //   print(instance);
 //   print(context);
 //   print('Aspectd:KWLM25');
 // }
}
