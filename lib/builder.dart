import 'package:build/build.dart';
import 'package:flutter_steps/util/flutter_annotation_test.dart';
import 'package:source_gen/source_gen.dart';

Builder annotationBuilder(BuilderOptions options) =>
		LibraryBuilder(AnnotationGenerator());