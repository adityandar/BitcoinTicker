import 'networking.dart';
import 'dart:convert';

class PriceBrain {
  Future<int> getPrice(
    String base,
    String quote,
  ) async {
    Network network = Network(
        'https://rest.coinapi.io/v1/exchangerate/$base/$quote?apikey=83C68604-24B9-44ED-964A-62876C6EE561');
    var data = await network.getData();

    double dataNew = jsonDecode(data.body)['rate'];
    return dataNew.toInt();
  }
}
