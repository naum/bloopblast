library lowdash;

import 'dart:io';
import 'dart:math';

var RNG = new Random();

String capitalize(String s) => '${s[0].toUpperCase()}${s.substring(1)}';

String fetchFileContent(String fp) {
  var f = new File(fp);
  return f.readAsStringSync();
}

num largest(List l) {
  var b = 0;
  for (var e in l) {
    if (e > b) b = e;
  }
  return b;
}

num mean(List l) {
  var sum = 0.0;
  for (var e in l) {
    sum += e;
  }
  return sum / l.length;
}

void shuffle(List l) {
  var n = l.length;
  while (n > 0) {
    var i = RNG.nextInt(n);
    n -= 1;
    var t = l[n];
    l[n] = l[i];
    l[i] = t;
  }
}

num sigma(List l) {
  var m = mean(l);
  var sods = 0.0;
  for (var n in l) {
    sods += pow(n - m, 2);
  }
  return sqrt(sods / l.length);
}
