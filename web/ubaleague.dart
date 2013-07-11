library 'uba';

import 'namepool.dart';

class UbaLeague {

  static NAMEPOOL = new Namepool();
  static const TOTAL_TEAMS = 32;
  var data = {};

  UbaLeague() {
    genesis();
  }

  UbaLeague.fromJson(Map j) {
    data = j;
  }

  void genesis() {
    data['title'] = 'UBA';
    data['season'] = 0;
    data['freeagents'] = [];
    data['teams'] = [];
  }

  Map spawnMan() {
  }

}
