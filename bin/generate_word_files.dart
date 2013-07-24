#!/usr/bin/env dart

import 'dart:async';
import 'dart:io';
import 'dart:math';

final reValidWord = new RegExp(r'^\w{1,6}$');

main() {
  var wf = new File('/usr/share/dict/words');
  var wl = wf.readAsStringSync().split('\n');
  wl = wl.where((w) => reValidWord.hasMatch(w)).toList();
  wl = wl.map((w) => w.toLowerCase()).toList();
  print(wl);
  print(wl.length);
  var uwl = wl.toSet().toList();
  print(uwl.length);
  uwl.sort();
  var nwf = new File('../web/words.txt');
  nwf.writeAsStringSync(uwl.join('\n') + '\n');
}
