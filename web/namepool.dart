library 'namepool';

import 'dart:async';
import 'dart:math';
import 'dart:html';

import 'lowdash.dart';

var RNG = new Random();
var TEAMPOOL = [
  'New York', 'Los Angeles', 'Chicago', 'Washington', 'San Francisco',
  'Boston', 'Philadelphia', 'Dallas', 'Miami', 'Houston',
  'Atlanta', 'Detroit', 'Seattle', 'Phoenix', 'Minneapolis',
  'Cleveland', 'Denver', 'San Diego', 'Portland', 'Orlando',
  'St. Louis', 'Tampa', 'Pittsburgh', 'Sacramento', 'Charlotte',
  'Kansas City', 'Salt Lake City', 'Columbus', 'Indianapolis', 'Las Vegas',
  'San Antonio', 'Cincinnati', 'Milwaukee', 'Raleigh', 'Nashville',
  'Austin', 'Virginia Beach', 'Greensboro', 'Jacksonville', 'Hartford',
  'Louisville', 'New Orleans', 'Grand Rapids', 'Greenville', 'Memphis',
  'Oklahoma City', 'Birmingham', 'Richmond', 'Harrisburg', 'Buffalo',
  'Rochester', 'Albany', 'Albuquerque', 'Tulsa', 'Fresno',
  'Knoxville', 'Dayton', 'El Paso', 'Tucson', 
];

class Namepool {

  var wordlist = [];

  Namepool() {
    HttpRequest.getString('/words.txt').then((r) {
      wordlist = r.split('\n');
    });
    shuffle(TEAMPOOL);
  }

  String rollName() {
    var s1 = RNG.nextInt(wordlist.length);
    var s2 = RNG.nextInt(wordlist.length);
    return capitalize('${wordlist[s1]}${wordlist[s2]}');
  }

  String rollTeam() {
    return TEAMPOOL.removeLast();
  }

}
