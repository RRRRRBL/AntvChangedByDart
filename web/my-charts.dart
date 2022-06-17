// Dart JS示例
// AntV可视化组件（https://antv.antfin.com/zh-cn/g2/3.x/demo/pie/color-rose.html#）
// Dart JS文档（https://api.dart.cn/stable/2.16.2/dart-js/dart-js-library.html）

import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#dart-status') as DivElement;
  dartStatus.text = 'Dart is running!';

  var myuserData = JsObject.jsify([
  {'name': 'China','value': 200},
  {'name': 'Russia','value': 110},
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myuserData]);
  chart.callMethod('render', []);
}