import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const bitcoinAverageURL =
    'https://apiv2.bitcoinaverage.com/indices/global/ticker';

class CoinData {
  Future<String> getCoinData(String crypto, String currency) async {
    var response = await http.get('$bitcoinAverageURL/$crypto$currency');
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data['last'].toString();
    } else {
      print(response.statusCode);
      return null;
    }
  }
}
