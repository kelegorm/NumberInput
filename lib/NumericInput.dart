import 'dart:html';
import 'dart:html_common';
import 'package:initialize/initialize.dart';
import 'package:web_components/interop.dart';

class NumericInput extends InputElement {

  NumericInput.created() : super.created() { print('created!');}

  @override
  void attached() {
    super.attached();
    print('hello!!!');
  }

  @DomName('HTMLInputElement.value')
  @DocsEditable()
  void set value(String value) {
    print('lala'); // I can't see this in console output.
    super.value = value + 'err';
  }
}

//@initMethod
upgradeTheGraphEditor() => document.registerElement('x-input', NumericInput, extendsTag: 'input');
//upgradeTheGraphEditor() => registerDartType('x-input', NumericInput, extendsTag: 'input');