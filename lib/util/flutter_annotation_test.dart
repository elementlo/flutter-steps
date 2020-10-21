import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:source_gen/source_gen.dart';


class Param{
	final String name;
	final int id;
	
	const Param(this.id, this.name);
	
}


///两个带注解的类在只有一个generator下只能输出一次
@Param(1, "test")
class TestModel{

}

@Param(1, "test")
class TestModel1{

}

class AnnotationGenerator extends GeneratorForAnnotation<Param>{
  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    return "class TestAno{}";
  }
  
}

