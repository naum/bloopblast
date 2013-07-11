#!/usr/local/bin/dart

import 'dart:io';
import 'lowdash.dart';



main() {
  var edate = computeExpirationDate();
  print('Set-cookie: ticket=12345; expires=${edate}');
  print('Content-type: text/html\n');
  print('<h1>hello world!</h1>');
  print('<h2>${edate}</h2>');
  var sb = new StringBuffer();
  var sk = Platform.environment.keys.toList();
  sk.sort();
  for (var k in sk) {
    sb.write('$k: ${Platform.environment[k]}<br>\n');
  };
  print(sb.toString());
}

String computeExpirationDate() {
  var ts = new DateTime.now().millisecondsSinceEpoch;
  ts += 1000 * 60 * 60 * 24 * 365;
  var et = new DateTime.fromMillisecondsSinceEpoch(ts);
  return et;
}
